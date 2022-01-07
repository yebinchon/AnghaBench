; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_interface.c_gigaset_if_initdriver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_interface.c_gigaset_if_initdriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gigaset_driver = type { i32, i32, %struct.tty_driver*, i32 }
%struct.tty_driver = type { i32, i8*, i8*, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }

@TTY_DRIVER_MAGIC = common dso_local global i32 0, align 4
@GIG_MAJOR = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_SERIAL = common dso_local global i32 0, align 4
@SERIAL_TYPE_NORMAL = common dso_local global i32 0, align 4
@TTY_DRIVER_REAL_RAW = common dso_local global i32 0, align 4
@TTY_DRIVER_DYNAMIC_DEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@tty_std_termios = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@B9600 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@if_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error %d registering tty driver\0A\00", align 1
@DEBUG_IF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"tty driver initialized\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_if_initdriver(%struct.gigaset_driver* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gigaset_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tty_driver*, align 8
  store %struct.gigaset_driver* %0, %struct.gigaset_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %11 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %14 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.tty_driver* @alloc_tty_driver(i32 %15)
  %17 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %18 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %17, i32 0, i32 2
  store %struct.tty_driver* %16, %struct.tty_driver** %18, align 8
  %19 = icmp eq %struct.tty_driver* %16, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %90

21:                                               ; preds = %3
  %22 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %23 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %22, i32 0, i32 2
  %24 = load %struct.tty_driver*, %struct.tty_driver** %23, align 8
  store %struct.tty_driver* %24, %struct.tty_driver** %9, align 8
  %25 = load i32, i32* @TTY_DRIVER_MAGIC, align 4
  %26 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %27 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @GIG_MAJOR, align 4
  %29 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %30 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @TTY_DRIVER_TYPE_SERIAL, align 4
  %32 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %33 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SERIAL_TYPE_NORMAL, align 4
  %35 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %36 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @TTY_DRIVER_REAL_RAW, align 4
  %38 = load i32, i32* @TTY_DRIVER_DYNAMIC_DEV, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %41 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %44 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %47 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %49 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %52 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %54 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %57 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %60 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %62 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %61, i32 0, i32 4
  %63 = bitcast %struct.TYPE_2__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 bitcast (%struct.TYPE_2__* @tty_std_termios to i8*), i64 4, i1 false)
  %64 = load i32, i32* @B9600, align 4
  %65 = load i32, i32* @CS8, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CREAD, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @HUPCL, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CLOCAL, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %74 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %77 = call i32 @tty_set_operations(%struct.tty_driver* %76, i32* @if_ops)
  %78 = load %struct.tty_driver*, %struct.tty_driver** %9, align 8
  %79 = call i32 @tty_register_driver(%struct.tty_driver* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %21
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %92

85:                                               ; preds = %21
  %86 = load i32, i32* @DEBUG_IF, align 4
  %87 = call i32 @gig_dbg(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %89 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %102

90:                                               ; preds = %20
  %91 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %82
  %93 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %94 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %93, i32 0, i32 2
  %95 = load %struct.tty_driver*, %struct.tty_driver** %94, align 8
  %96 = icmp ne %struct.tty_driver* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.gigaset_driver*, %struct.gigaset_driver** %4, align 8
  %99 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %98, i32 0, i32 2
  %100 = load %struct.tty_driver*, %struct.tty_driver** %99, align 8
  %101 = call i32 @put_tty_driver(%struct.tty_driver* %100)
  br label %102

102:                                              ; preds = %85, %97, %92
  ret void
}

declare dso_local %struct.tty_driver* @alloc_tty_driver(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_set_operations(%struct.tty_driver*, i32*) #1

declare dso_local i32 @tty_register_driver(%struct.tty_driver*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @put_tty_driver(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
