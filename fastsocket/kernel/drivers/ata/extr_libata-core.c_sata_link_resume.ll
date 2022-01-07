; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_link_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_sata_link_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@ATA_LINK_RESUME_TRIES = common dso_local global i32 0, align 4
@SCR_CONTROL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to resume link (SControl %X)\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"link resume succeeded after %d retries\0A\00", align 1
@SCR_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_link_resume(%struct.ata_link* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @ATA_LINK_RESUME_TRIES, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %14 = load i32, i32* @SCR_CONTROL, align 4
  %15 = call i32 @sata_scr_read(%struct.ata_link* %13, i32 %14, i32* %9)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 240
  %23 = or i32 %22, 768
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %25 = load i32, i32* @SCR_CONTROL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @sata_scr_write(%struct.ata_link* %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %20
  %32 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %33 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ata_msleep(i32 %34, i32 200)
  %36 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %37 = load i32, i32* @SCR_CONTROL, align 4
  %38 = call i32 @sata_scr_read(%struct.ata_link* %36, i32 %37, i32* %9)
  store i32 %38, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %101

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 3855
  %46 = icmp ne i32 %45, 768
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %20, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 3855
  %56 = icmp ne i32 %55, 768
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ata_link_printk(%struct.ata_link* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %60)
  store i32 0, i32* %4, align 4
  br label %101

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ATA_LINK_RESUME_TRIES, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %68 = load i32, i32* @KERN_WARNING, align 4
  %69 = load i32, i32* @ATA_LINK_RESUME_TRIES, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %69, %70
  %72 = call i32 @ata_link_printk(%struct.ata_link* %67, i32 %68, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %62
  %74 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @sata_link_debounce(%struct.ata_link* %74, i64* %75, i64 %76)
  store i32 %77, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %101

81:                                               ; preds = %73
  %82 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %83 = load i32, i32* @SCR_ERROR, align 4
  %84 = call i32 @sata_scr_read(%struct.ata_link* %82, i32 %83, i32* %10)
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %88 = load i32, i32* @SCR_ERROR, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @sata_scr_write(%struct.ata_link* %87, i32 %88, i32 %89)
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  br label %99

98:                                               ; preds = %91
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %99, %79, %57, %40, %29, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @sata_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @ata_msleep(i32, i32) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i32) #1

declare dso_local i32 @sata_link_debounce(%struct.ata_link*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
