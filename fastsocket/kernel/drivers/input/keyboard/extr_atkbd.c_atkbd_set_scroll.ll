; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_scroll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i64, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i8*, i64)* @atkbd_set_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_scroll(%struct.atkbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atkbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.atkbd* %0, %struct.atkbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strict_strtoul(i8* %13, i32 10, i64* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %80

22:                                               ; preds = %16
  %23 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %24 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %30 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %29, i32 0, i32 1
  %31 = load %struct.input_dev*, %struct.input_dev** %30, align 8
  store %struct.input_dev* %31, %struct.input_dev** %8, align 8
  %32 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %33 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i8
  store i8 %35, i8* %12, align 1
  %36 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %36, %struct.input_dev** %9, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %38 = icmp ne %struct.input_dev* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %80

42:                                               ; preds = %28
  %43 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %44 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %45 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %44, i32 0, i32 1
  store %struct.input_dev* %43, %struct.input_dev** %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %48 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %50 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %49)
  %51 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %52 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %51)
  %53 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %54 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %53, i32 0, i32 1
  %55 = load %struct.input_dev*, %struct.input_dev** %54, align 8
  %56 = call i32 @input_register_device(%struct.input_dev* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %42
  %60 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %61 = call i32 @input_free_device(%struct.input_dev* %60)
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i64
  %64 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %65 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %67 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %68 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %67, i32 0, i32 1
  store %struct.input_dev* %66, %struct.input_dev** %68, align 8
  %69 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %70 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %69)
  %71 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %72 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %80

74:                                               ; preds = %42
  %75 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %76 = call i32 @input_unregister_device(%struct.input_dev* %75)
  br label %77

77:                                               ; preds = %74, %22
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %59, %39, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @atkbd_set_keycode_table(%struct.atkbd*) #1

declare dso_local i32 @atkbd_set_device_attrs(%struct.atkbd*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
