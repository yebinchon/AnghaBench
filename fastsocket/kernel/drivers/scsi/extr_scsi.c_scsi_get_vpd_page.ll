; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_get_vpd_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_get_vpd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_get_vpd_page(%struct.scsi_device* %0, i8 zeroext %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @scsi_vpd_inquiry(%struct.scsi_device* %12, i8* %13, i8 zeroext 0, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %75

19:                                               ; preds = %4
  %20 = load i8, i8* %7, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %78

24:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 4
  %33 = call i32 @min(i32 %30, i32 %32)
  %34 = icmp slt i32 %26, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %65

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %25

51:                                               ; preds = %25
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 4
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %65

64:                                               ; preds = %58, %51
  br label %75

65:                                               ; preds = %63, %46
  %66 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8, i8* %7, align 1
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @scsi_vpd_inquiry(%struct.scsi_device* %66, i8* %67, i8 zeroext %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %75

74:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %78

75:                                               ; preds = %73, %64, %18
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %74, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @scsi_vpd_inquiry(%struct.scsi_device*, i8*, i8 zeroext, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
