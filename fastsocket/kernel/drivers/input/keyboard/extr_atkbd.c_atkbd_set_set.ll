; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_set_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { i64, i8, %struct.input_dev*, i32 }
%struct.input_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*, i8*, i64)* @atkbd_set_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_set_set(%struct.atkbd* %0, i8* %1, i64 %2) #0 {
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
  br label %109

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strict_strtoul(i8* %22, i32 10, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %109

34:                                               ; preds = %28, %25
  %35 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %36 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %34
  %41 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %42 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %41, i32 0, i32 2
  %43 = load %struct.input_dev*, %struct.input_dev** %42, align 8
  store %struct.input_dev* %43, %struct.input_dev** %8, align 8
  %44 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %45 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %44, i32 0, i32 1
  %46 = load i8, i8* %45, align 8
  store i8 %46, i8* %13, align 1
  %47 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %48 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i8
  store i8 %50, i8* %12, align 1
  %51 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %51, %struct.input_dev** %9, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %53 = icmp ne %struct.input_dev* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %109

57:                                               ; preds = %40
  %58 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %59 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %60 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %59, i32 0, i32 2
  store %struct.input_dev* %58, %struct.input_dev** %60, align 8
  %61 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i8
  %64 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %65 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 8
  %67 = call i8* @atkbd_select_set(%struct.atkbd* %61, i8 zeroext %63, i8 zeroext %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %70 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %72 = call i32 @atkbd_reset_state(%struct.atkbd* %71)
  %73 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %74 = call i32 @atkbd_activate(%struct.atkbd* %73)
  %75 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %76 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %75)
  %77 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %78 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %77)
  %79 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %80 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %79, i32 0, i32 2
  %81 = load %struct.input_dev*, %struct.input_dev** %80, align 8
  %82 = call i32 @input_register_device(%struct.input_dev* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %57
  %86 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %87 = call i32 @input_free_device(%struct.input_dev* %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %89 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %90 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %89, i32 0, i32 2
  store %struct.input_dev* %88, %struct.input_dev** %90, align 8
  %91 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %92 = load i8, i8* %12, align 1
  %93 = load i8, i8* %13, align 1
  %94 = call i8* @atkbd_select_set(%struct.atkbd* %91, i8 zeroext %92, i8 zeroext %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %97 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %99 = call i32 @atkbd_set_keycode_table(%struct.atkbd* %98)
  %100 = load %struct.atkbd*, %struct.atkbd** %5, align 8
  %101 = call i32 @atkbd_set_device_attrs(%struct.atkbd* %100)
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %4, align 4
  br label %109

103:                                              ; preds = %57
  %104 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %105 = call i32 @input_unregister_device(%struct.input_dev* %104)
  br label %106

106:                                              ; preds = %103, %34
  %107 = load i64, i64* %7, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %106, %85, %54, %31, %18
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i8* @atkbd_select_set(%struct.atkbd*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @atkbd_reset_state(%struct.atkbd*) #1

declare dso_local i32 @atkbd_activate(%struct.atkbd*) #1

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
