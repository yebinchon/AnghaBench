; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_followup_srst_needed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_followup_srst_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, i32 }

@ATA_LFLAG_NO_SRST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32, i32*)* @ata_eh_followup_srst_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_followup_srst_needed(%struct.ata_link* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %9 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ATA_LFLAG_NO_SRST, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %16 = call i64 @ata_link_offline(%struct.ata_link* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %37

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %37

25:                                               ; preds = %19
  %26 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %27 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @sata_pmp_supported(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %33 = call i64 @ata_is_host_link(%struct.ata_link* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %37

36:                                               ; preds = %31, %25
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %35, %24, %18
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @ata_link_offline(%struct.ata_link*) #1

declare dso_local i64 @sata_pmp_supported(i32) #1

declare dso_local i64 @ata_is_host_link(%struct.ata_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
