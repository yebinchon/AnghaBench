; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_read_write_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_read_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlc_83xx_entry_hdr = type { i32, i64 }
%struct.qlc_83xx_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlc_83xx_entry_hdr*)* @qlcnic_83xx_read_write_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_read_write_list(%struct.qlcnic_adapter* %0, %struct.qlc_83xx_entry_hdr* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_entry_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlc_83xx_entry*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlc_83xx_entry_hdr* %1, %struct.qlc_83xx_entry_hdr** %4, align 8
  %7 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %8 = bitcast %struct.qlc_83xx_entry_hdr* %7 to i8*
  %9 = getelementptr inbounds i8, i8* %8, i64 16
  %10 = bitcast i8* %9 to %struct.qlc_83xx_entry*
  store %struct.qlc_83xx_entry* %10, %struct.qlc_83xx_entry** %6, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %14 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %11
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %20 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %23 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @qlcnic_83xx_read_write_crb_reg(%struct.qlcnic_adapter* %18, i32 %21, i32 %24)
  %26 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %27 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @udelay(i32 %34)
  br label %36

36:                                               ; preds = %30, %17
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %41 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %40, i32 1
  store %struct.qlc_83xx_entry* %41, %struct.qlc_83xx_entry** %6, align 8
  br label %11

42:                                               ; preds = %11
  ret void
}

declare dso_local i32 @qlcnic_83xx_read_write_crb_reg(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
