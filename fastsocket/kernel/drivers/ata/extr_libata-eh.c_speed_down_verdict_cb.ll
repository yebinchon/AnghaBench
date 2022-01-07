; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_speed_down_verdict_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_speed_down_verdict_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_ering_entry = type { i64, i32, i32 }
%struct.speed_down_verdict_arg = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_ering_entry*, i8*)* @speed_down_verdict_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speed_down_verdict_cb(%struct.ata_ering_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_ering_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.speed_down_verdict_arg*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_ering_entry* %0, %struct.ata_ering_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.speed_down_verdict_arg*
  store %struct.speed_down_verdict_arg* %9, %struct.speed_down_verdict_arg** %6, align 8
  %10 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %4, align 8
  %11 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.speed_down_verdict_arg*, %struct.speed_down_verdict_arg** %6, align 8
  %14 = getelementptr inbounds %struct.speed_down_verdict_arg, %struct.speed_down_verdict_arg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %4, align 8
  %20 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ata_ering_entry*, %struct.ata_ering_entry** %4, align 8
  %23 = getelementptr inbounds %struct.ata_ering_entry, %struct.ata_ering_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.speed_down_verdict_arg*, %struct.speed_down_verdict_arg** %6, align 8
  %26 = getelementptr inbounds %struct.speed_down_verdict_arg, %struct.speed_down_verdict_arg* %25, i32 0, i32 2
  %27 = call i32 @ata_eh_categorize_error(i32 %21, i32 %24, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.speed_down_verdict_arg*, %struct.speed_down_verdict_arg** %6, align 8
  %29 = getelementptr inbounds %struct.speed_down_verdict_arg, %struct.speed_down_verdict_arg* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ata_eh_categorize_error(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
