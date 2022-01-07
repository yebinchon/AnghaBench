; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ata_link* }

@jiffies = common dso_local global i64 0, align 8
@ATA_TMOUT_FF_WAIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"link is slow to respond, please be patient (ready=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_wait_ready(%struct.ata_link* %0, i64 %1, i32 (%struct.ata_link*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.ata_link*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (%struct.ata_link*)* %2, i32 (%struct.ata_link*)** %7, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @ATA_TMOUT_FF_WAIT, align 4
  %17 = call i64 @ata_deadline(i64 %15, i32 %16)
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %19 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %20 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.ata_link*, %struct.ata_link** %22, align 8
  %24 = icmp eq %struct.ata_link* %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @time_after(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %31, %3
  br label %34

34:                                               ; preds = %33, %111
  %35 = load i64, i64* @jiffies, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %7, align 8
  %37 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %38 = call i32 %36(%struct.ata_link* %37)
  store i32 %38, i32* %13, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %116

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %42
  %48 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %49 = call i64 @ata_link_online(%struct.ata_link* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %72

52:                                               ; preds = %47
  %53 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %54 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ATA_FLAG_SATA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %63 = call i32 @ata_link_offline(%struct.ata_link* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @time_before(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %70, %65, %61, %52
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %42
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %4, align 4
  br label %116

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @time_after(i64 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %116

86:                                               ; preds = %78
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i32, i32* @HZ, align 4
  %93 = mul nsw i32 5, %92
  %94 = sext i32 %93 to i64
  %95 = add i64 %91, %94
  %96 = call i64 @time_after(i64 %90, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = sub i64 %99, %100
  %102 = load i32, i32* @HZ, align 4
  %103 = mul nsw i32 3, %102
  %104 = sext i32 %103 to i64
  %105 = icmp ugt i64 %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %108 = load i32, i32* @KERN_WARNING, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @ata_link_printk(%struct.ata_link* %107, i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %109)
  store i32 1, i32* %10, align 4
  br label %111

111:                                              ; preds = %106, %98, %89, %86
  %112 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %113 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = call i32 @ata_msleep(%struct.TYPE_2__* %114, i32 50)
  br label %34

116:                                              ; preds = %83, %76, %41
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @ata_deadline(i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @ata_link_online(%struct.ata_link*) #1

declare dso_local i32 @ata_link_offline(%struct.ata_link*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i32) #1

declare dso_local i32 @ata_msleep(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
