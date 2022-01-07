; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOSuspendBootRta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOSuspendBootRta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Host = type { i32 }
%struct.CmdBlk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i8*, i64, i8* }

@RIO_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SUSPEND BOOT ON RTA ID %d, link %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"SUSPEND BOOT ON RTA: GetCmdBlk failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BOOT_RUP = common dso_local global i8* null, align 8
@IWAIT = common dso_local global i32 0, align 4
@IWAIT_MAGIC = common dso_local global i32 0, align 4
@RIO_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"SUSPEND BOOT ON RTA: Failed to queue iwait command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOSuspendBootRta(%struct.Host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.CmdBlk*, align 8
  store %struct.Host* %0, %struct.Host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 65, %11
  %13 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12)
  %14 = call %struct.CmdBlk* (...) @RIOGetCmdBlk()
  store %struct.CmdBlk* %14, %struct.CmdBlk** %8, align 8
  %15 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %16 = icmp ne %struct.CmdBlk* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %19 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %81

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %25 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @BOOT_RUP, align 8
  %28 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %29 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  store i8* %27, i8** %30, align 8
  %31 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %32 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @BOOT_RUP, align 8
  %35 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %36 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i8* %34, i8** %37, align 8
  %38 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %39 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 132, i32* %40, align 4
  %41 = load i32, i32* @IWAIT, align 4
  %42 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %43 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %49 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @IWAIT_MAGIC, align 4
  %54 = and i32 %53, 255
  %55 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %56 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* @IWAIT_MAGIC, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 255
  %63 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %64 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  store i32 %62, i32* %67, align 4
  %68 = load %struct.Host*, %struct.Host** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load %struct.CmdBlk*, %struct.CmdBlk** %8, align 8
  %72 = call i64 @RIOQueueCmdBlk(%struct.Host* %68, i32 %70, %struct.CmdBlk* %71)
  %73 = load i64, i64* @RIO_FAIL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %22
  %76 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %77 = call i32 (i32, i8*, ...) @rio_dprintk(i32 %76, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %75, %17
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @rio_dprintk(i32, i8*, ...) #1

declare dso_local %struct.CmdBlk* @RIOGetCmdBlk(...) #1

declare dso_local i64 @RIOQueueCmdBlk(%struct.Host*, i32, %struct.CmdBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
