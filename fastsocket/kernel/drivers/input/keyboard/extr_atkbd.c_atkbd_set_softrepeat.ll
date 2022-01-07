; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_softrepeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_softrepeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i64, i8, %struct.input_dev*, i32 }
%struct.input_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i8*, i64)* @atkbd_set_softrepeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_softrepeat(%struct.atkbd* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atkbd*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.atkbd* %0, %struct.atkbd** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %15 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %99

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strict_strtoul(i8* %22, i32 10, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %99

31:                                               ; preds = %25
  %32 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %33 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %96

37:                                               ; preds = %31
  %38 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %39 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %38, i32 0, i32 2
  %40 = load %struct.input_dev*, %struct.input_dev** %39, align 8
  store %struct.input_dev* %40, %struct.input_dev** %8, align 8
  %41 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %42 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i8
  store i8 %44, i8* %12, align 1
  %45 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %46 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %45, i32 0, i32 1
  %47 = load i8, i8* %46, align 8
  store i8 %47, i8* %13, align 1
  %48 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %48, %struct.input_dev** %9, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %50 = icmp ne %struct.input_dev* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %99

54:                                               ; preds = %37
  %55 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %56 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %57 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %56, i32 0, i32 2
  store %struct.input_dev* %55, %struct.input_dev** %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %60 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %62 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %67 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %66, i32 0, i32 1
  store i8 1, i8* %67, align 8
  br label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %70 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %69)
  %71 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %72 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %71, i32 0, i32 2
  %73 = load %struct.input_dev*, %struct.input_dev** %72, align 8
  %74 = call i32 @input_register_device(%struct.input_dev* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %68
  %78 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %79 = call i32 @input_free_device(%struct.input_dev* %78)
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %82 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %81, i32 0, i32 2
  store %struct.input_dev* %80, %struct.input_dev** %82, align 8
  %83 = load i8, i8* %12, align 1
  %84 = zext i8 %83 to i64
  %85 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %86 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i8, i8* %13, align 1
  %88 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %89 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %88, i32 0, i32 1
  store i8 %87, i8* %89, align 8
  %90 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %91 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %99

93:                                               ; preds = %68
  %94 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %95 = call i32 @input_unregister_device(%struct.input_dev* %94)
  br label %96

96:                                               ; preds = %93, %31
  %97 = load i64, i64* %7, align 8
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %96, %77, %51, %28, %18
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

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
