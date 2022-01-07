; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_auto_resetlevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_auto_resetlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32 }

@HV7131_REG_HIREFNOH = common dso_local global i32 0, align 4
@HV7131_REG_HIREFNOL = common dso_local global i32 0, align 4
@HV7131_REG_LOREFNOH = common dso_local global i32 0, align 4
@HV7131_REG_LOREFNOL = common dso_local global i32 0, align 4
@HV7131_REG_ARLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_se401*)* @se401_auto_resetlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se401_auto_resetlevel(%struct.usb_se401* %0) #0 {
  %2 = alloca %struct.usb_se401*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_se401* %0, %struct.usb_se401** %2, align 8
  %6 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %7 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %10 = load i32, i32* @HV7131_REG_HIREFNOH, align 4
  %11 = call i32 @se401_get_feature(%struct.usb_se401* %9, i32 %10)
  %12 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %13 = load i32, i32* @HV7131_REG_HIREFNOL, align 4
  %14 = call i32 @se401_get_feature(%struct.usb_se401* %12, i32 %13)
  %15 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %16 = load i32, i32* @HV7131_REG_LOREFNOH, align 4
  %17 = call i32 @se401_get_feature(%struct.usb_se401* %15, i32 %16)
  %18 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %19 = load i32, i32* @HV7131_REG_LOREFNOL, align 4
  %20 = call i32 @se401_get_feature(%struct.usb_se401* %18, i32 %19)
  %21 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %22 = load i32, i32* @HV7131_REG_HIREFNOH, align 4
  %23 = call i32 @se401_get_feature(%struct.usb_se401* %21, i32 %22)
  %24 = mul nsw i32 256, %23
  %25 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %26 = load i32, i32* @HV7131_REG_HIREFNOL, align 4
  %27 = call i32 @se401_get_feature(%struct.usb_se401* %25, i32 %26)
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %30 = load i32, i32* @HV7131_REG_LOREFNOH, align 4
  %31 = call i32 @se401_get_feature(%struct.usb_se401* %29, i32 %30)
  %32 = mul nsw i32 256, %31
  %33 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %34 = load i32, i32* @HV7131_REG_LOREFNOL, align 4
  %35 = call i32 @se401_get_feature(%struct.usb_se401* %33, i32 %34)
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ugt i32 %37, 10
  br i1 %38, label %39, label %58

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %4, align 4
  %42 = icmp uge i32 %41, 10
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %45 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 63
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %50, label %57

50:                                               ; preds = %48
  %51 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %52 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %4, align 4
  %56 = udiv i32 %55, 2
  store i32 %56, i32* %4, align 4
  br label %40

57:                                               ; preds = %48
  br label %81

58:                                               ; preds = %1
  %59 = load i32, i32* %3, align 4
  %60 = icmp ugt i32 %59, 20
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %72, %61
  %63 = load i32, i32* %3, align 4
  %64 = icmp uge i32 %63, 20
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %67 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br label %70

70:                                               ; preds = %65, %62
  %71 = phi i1 [ false, %62 ], [ %69, %65 ]
  br i1 %71, label %72, label %79

72:                                               ; preds = %70
  %73 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %74 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %3, align 4
  %78 = udiv i32 %77, 2
  store i32 %78, i32* %3, align 4
  br label %62

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %57
  %82 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %83 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %89 = load i32, i32* @HV7131_REG_ARLV, align 4
  %90 = load %struct.usb_se401*, %struct.usb_se401** %2, align 8
  %91 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @se401_set_feature(%struct.usb_se401* %88, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %87, %81
  ret void
}

declare dso_local i32 @se401_get_feature(%struct.usb_se401*, i32) #1

declare dso_local i32 @se401_set_feature(%struct.usb_se401*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
