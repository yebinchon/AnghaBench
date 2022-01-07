; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOZombieRta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_riocmd.c_RIOZombieRta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Host = type { i32 }
%struct.Map = type { i64 }
%struct.CmdBlk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i8*, i64, i8*, i64 }

@RIO_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ZOMBIE RTA\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"ZOMBIE RTA: GetCmdBlk failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BOOT_RUP = common dso_local global i8* null, align 8
@ZOMBIE = common dso_local global i32 0, align 4
@ZOMBIE_MAGIC = common dso_local global i32 0, align 4
@RIO_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"ZOMBIE RTA: Failed to queue zombie command\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIOZombieRta(%struct.Host* %0, %struct.Map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Host*, align 8
  %5 = alloca %struct.Map*, align 8
  %6 = alloca %struct.CmdBlk*, align 8
  store %struct.Host* %0, %struct.Host** %4, align 8
  store %struct.Map* %1, %struct.Map** %5, align 8
  %7 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %8 = call i32 @rio_dprintk(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.CmdBlk* (...) @RIOGetCmdBlk()
  store %struct.CmdBlk* %9, %struct.CmdBlk** %6, align 8
  %10 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %11 = icmp ne %struct.CmdBlk* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %14 = call i32 @rio_dprintk(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.Map*, %struct.Map** %5, align 8
  %19 = getelementptr inbounds %struct.Map, %struct.Map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %22 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  store i64 %20, i64* %23, align 8
  %24 = load i8*, i8** @BOOT_RUP, align 8
  %25 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %26 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i8* %24, i8** %27, align 8
  %28 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %29 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @BOOT_RUP, align 8
  %32 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %33 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i8* %31, i8** %34, align 8
  %35 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %36 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 132, i32* %37, align 8
  %38 = load i32, i32* @ZOMBIE, align 4
  %39 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %40 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %38, i32* %43, align 4
  %44 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %45 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* @ZOMBIE_MAGIC, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %52 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %50, i32* %55, align 4
  %56 = load i32, i32* @ZOMBIE_MAGIC, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %60 = getelementptr inbounds %struct.CmdBlk, %struct.CmdBlk* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %58, i32* %63, align 4
  %64 = load %struct.Host*, %struct.Host** %4, align 8
  %65 = load %struct.Map*, %struct.Map** %5, align 8
  %66 = getelementptr inbounds %struct.Map, %struct.Map* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = load %struct.CmdBlk*, %struct.CmdBlk** %6, align 8
  %70 = call i64 @RIOQueueCmdBlk(%struct.Host* %64, i64 %68, %struct.CmdBlk* %69)
  %71 = load i64, i64* @RIO_FAIL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %17
  %74 = load i32, i32* @RIO_DEBUG_CMD, align 4
  %75 = call i32 @rio_dprintk(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %73, %12
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @rio_dprintk(i32, i8*) #1

declare dso_local %struct.CmdBlk* @RIOGetCmdBlk(...) #1

declare dso_local i64 @RIOQueueCmdBlk(%struct.Host*, i64, %struct.CmdBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
