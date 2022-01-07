; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_vio_driver_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_vio_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i8*, i32, i32, i32, %struct.vio_driver_ops*, %struct.vio_version*, %struct.vio_dev*, i32 }
%struct.vio_dev = type { i32 }
%struct.vio_version = type { i32 }
%struct.vio_driver_ops = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@vio_port_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_driver_init(%struct.vio_driver_state* %0, %struct.vio_dev* %1, i32 %2, %struct.vio_version* %3, i32 %4, %struct.vio_driver_ops* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vio_driver_state*, align 8
  %10 = alloca %struct.vio_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vio_version*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vio_driver_ops*, align 8
  %15 = alloca i8*, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %9, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.vio_version* %3, %struct.vio_version** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.vio_driver_ops* %5, %struct.vio_driver_ops** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load i32, i32* %11, align 4
  switch i32 %16, label %18 [
    i32 129, label %17
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
  ]

17:                                               ; preds = %7, %7, %7, %7
  br label %21

18:                                               ; preds = %7
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %82

21:                                               ; preds = %17
  %22 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %23 = getelementptr inbounds %struct.vio_driver_ops, %struct.vio_driver_ops* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %28 = getelementptr inbounds %struct.vio_driver_ops, %struct.vio_driver_ops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %33 = getelementptr inbounds %struct.vio_driver_ops, %struct.vio_driver_ops* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26, %21
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load %struct.vio_version*, %struct.vio_version** %12, align 8
  %41 = icmp ne %struct.vio_version* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %82

48:                                               ; preds = %42
  %49 = load i8*, i8** %15, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %82

54:                                               ; preds = %48
  %55 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %56 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %55, i32 0, i32 7
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load i8*, i8** %15, align 8
  %59 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %60 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %63 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vio_dev*, %struct.vio_dev** %10, align 8
  %65 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %66 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %65, i32 0, i32 6
  store %struct.vio_dev* %64, %struct.vio_dev** %66, align 8
  %67 = load %struct.vio_version*, %struct.vio_version** %12, align 8
  %68 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %69 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %68, i32 0, i32 5
  store %struct.vio_version* %67, %struct.vio_version** %69, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %72 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vio_driver_ops*, %struct.vio_driver_ops** %14, align 8
  %74 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %75 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %74, i32 0, i32 4
  store %struct.vio_driver_ops* %73, %struct.vio_driver_ops** %75, align 8
  %76 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %77 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %76, i32 0, i32 3
  %78 = load i32, i32* @vio_port_timer, align 4
  %79 = load %struct.vio_driver_state*, %struct.vio_driver_state** %9, align 8
  %80 = ptrtoint %struct.vio_driver_state* %79 to i64
  %81 = call i32 @setup_timer(i32* %77, i32 %78, i64 %80)
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %54, %51, %45, %36, %18
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
