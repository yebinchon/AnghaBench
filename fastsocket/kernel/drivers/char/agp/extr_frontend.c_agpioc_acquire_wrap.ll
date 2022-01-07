; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agpioc_acquire_wrap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_frontend.c_agpioc_acquire_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.agp_file_private = type { i32, i32 }
%struct.agp_controller = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AGP_FF_ALLOW_CONTROLLER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@agp_fe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_5__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AGP_FF_IS_CONTROLLER = common dso_local global i32 0, align 4
@AGP_FF_IS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agpioc_acquire_wrap(%struct.agp_file_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_file_private*, align 8
  %4 = alloca %struct.agp_controller*, align 8
  store %struct.agp_file_private* %0, %struct.agp_file_private** %3, align 8
  %5 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @AGP_FF_ALLOW_CONTROLLER, align 4
  %7 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %8 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %7, i32 0, i32 0
  %9 = call i32 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 1), align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %73

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %73

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %38 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %39 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.agp_controller* @agp_find_controller_by_pid(i32 %40)
  store %struct.agp_controller* %41, %struct.agp_controller** %4, align 8
  %42 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %43 = icmp ne %struct.agp_controller* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %46 = call i32 @agp_controller_make_current(%struct.agp_controller* %45)
  br label %64

47:                                               ; preds = %34
  %48 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %49 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.agp_controller* @agp_create_controller(i32 %50)
  store %struct.agp_controller* %51, %struct.agp_controller** %4, align 8
  %52 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %53 = icmp eq %struct.agp_controller* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @agp_fe, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @agp_bridge, align 8
  %56 = call i32 @agp_backend_release(%struct.TYPE_5__* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %61 = call i32 @agp_insert_controller(%struct.agp_controller* %60)
  %62 = load %struct.agp_controller*, %struct.agp_controller** %4, align 8
  %63 = call i32 @agp_controller_make_current(%struct.agp_controller* %62)
  br label %64

64:                                               ; preds = %59, %44
  %65 = load i32, i32* @AGP_FF_IS_CONTROLLER, align 4
  %66 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %67 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %66, i32 0, i32 0
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load i32, i32* @AGP_FF_IS_VALID, align 4
  %70 = load %struct.agp_file_private*, %struct.agp_file_private** %3, align 8
  %71 = getelementptr inbounds %struct.agp_file_private, %struct.agp_file_private* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %64, %54, %31, %23, %17, %11
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.agp_controller* @agp_find_controller_by_pid(i32) #1

declare dso_local i32 @agp_controller_make_current(%struct.agp_controller*) #1

declare dso_local %struct.agp_controller* @agp_create_controller(i32) #1

declare dso_local i32 @agp_backend_release(%struct.TYPE_5__*) #1

declare dso_local i32 @agp_insert_controller(%struct.agp_controller*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
