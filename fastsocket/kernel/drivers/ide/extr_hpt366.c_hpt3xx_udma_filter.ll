; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xx_udma_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_hpt366.c_hpt3xx_udma_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hpt_info = type { i32 }

@HPT366_ALLOW_ATA66_4 = common dso_local global i32 0, align 4
@bad_ata66_4 = common dso_local global i32 0, align 4
@ATA_UDMA3 = common dso_local global i32 0, align 4
@HPT366_ALLOW_ATA66_3 = common dso_local global i32 0, align 4
@bad_ata66_3 = common dso_local global i32 0, align 4
@ATA_UDMA2 = common dso_local global i32 0, align 4
@HPT370_ALLOW_ATA100_5 = common dso_local global i32 0, align 4
@bad_ata100_5 = common dso_local global i32 0, align 4
@ATA_UDMA4 = common dso_local global i32 0, align 4
@bad_ata33 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @hpt3xx_udma_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt3xx_udma_filter(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.hpt_info*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hpt_info* @hpt3xx_get_info(i32 %12)
  store %struct.hpt_info* %13, %struct.hpt_info** %5, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.hpt_info*, %struct.hpt_info** %5, align 8
  %18 = getelementptr inbounds %struct.hpt_info, %struct.hpt_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %73 [
    i32 134, label %20
    i32 133, label %41
    i32 132, label %52
    i32 131, label %63
    i32 130, label %63
    i32 129, label %63
    i32 128, label %63
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @HPT366_ALLOW_ATA66_4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i32, i32* @bad_ata66_4, align 4
  %26 = call i64 @check_in_drive_list(%struct.TYPE_6__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @ATA_UDMA3, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* @HPT366_ALLOW_ATA66_3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load i32, i32* @bad_ata66_3, align 4
  %36 = call i64 @check_in_drive_list(%struct.TYPE_6__* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %33
  br label %75

41:                                               ; preds = %1
  %42 = load i32, i32* @HPT370_ALLOW_ATA100_5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32, i32* @bad_ata100_5, align 4
  %47 = call i64 @check_in_drive_list(%struct.TYPE_6__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @ATA_UDMA4, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %44
  br label %75

52:                                               ; preds = %1
  %53 = load i32, i32* @HPT370_ALLOW_ATA100_5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = load i32, i32* @bad_ata100_5, align 4
  %58 = call i64 @check_in_drive_list(%struct.TYPE_6__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %52
  %61 = load i32, i32* @ATA_UDMA4, align 4
  store i32 %61, i32* %2, align 4
  br label %85

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %1, %1, %1, %1, %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ata_id_is_sata(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, -15
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %63
  br label %73

73:                                               ; preds = %1, %72
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %51, %40
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = load i32, i32* @bad_ata33, align 4
  %78 = call i64 @check_in_drive_list(%struct.TYPE_6__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %80
  %84 = phi i32 [ 0, %80 ], [ %82, %81 ]
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %73, %60
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.hpt_info* @hpt3xx_get_info(i32) #1

declare dso_local i64 @check_in_drive_list(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ata_id_is_sata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
