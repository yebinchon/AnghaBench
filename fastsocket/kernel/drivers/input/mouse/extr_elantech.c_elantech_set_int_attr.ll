; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_set_int_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_elantech.c_elantech_set_int_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.elantech_data* }
%struct.elantech_data = type { i32 }
%struct.elantech_attr_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETP_R10_ABSOLUTE_MODE = common dso_local global i64 0, align 8
@ETP_R11_4_BYTE_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i8*, i8*, i64)* @elantech_set_int_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_set_int_attr(%struct.psmouse* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elantech_data*, align 8
  %11 = alloca %struct.elantech_attr_data*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %16 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 0
  %17 = load %struct.elantech_data*, %struct.elantech_data** %16, align 8
  store %struct.elantech_data* %17, %struct.elantech_data** %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.elantech_attr_data*
  store %struct.elantech_attr_data* %19, %struct.elantech_attr_data** %11, align 8
  %20 = load %struct.elantech_data*, %struct.elantech_data** %10, align 8
  %21 = bitcast %struct.elantech_data* %20 to i8*
  %22 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %23 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @strict_strtoul(i8* %27, i32 16, i64* %13)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %84

33:                                               ; preds = %4
  %34 = load i64, i64* %13, align 8
  %35 = icmp ugt i64 %34, 255
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %84

39:                                               ; preds = %33
  %40 = load %struct.elantech_data*, %struct.elantech_data** %10, align 8
  %41 = getelementptr inbounds %struct.elantech_data, %struct.elantech_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %46 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i64, i64* @ETP_R10_ABSOLUTE_MODE, align 8
  %51 = load i64, i64* %13, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %13, align 8
  br label %63

53:                                               ; preds = %44
  %54 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %55 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 17
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* @ETP_R11_4_BYTE_MODE, align 8
  %60 = load i64, i64* %13, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %39
  %65 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %66 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %71 = load %struct.elantech_attr_data*, %struct.elantech_attr_data** %11, align 8
  %72 = getelementptr inbounds %struct.elantech_attr_data, %struct.elantech_attr_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @elantech_write_reg(%struct.psmouse* %70, i32 %73, i64 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69, %64
  %78 = load i64, i64* %13, align 8
  %79 = trunc i64 %78 to i8
  %80 = load i8*, i8** %12, align 8
  store i8 %79, i8* %80, align 1
  br label %81

81:                                               ; preds = %77, %69
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %36, %31
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @strict_strtoul(i8*, i32, i64*) #1

declare dso_local i64 @elantech_write_reg(%struct.psmouse*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
