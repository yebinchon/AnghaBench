; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_write_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_write_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlc_83xx_entry_hdr = type { i32, i64 }
%struct.qlc_83xx_quad_entry = type { i32, i32, i32, i32 }
%struct.qlc_83xx_poll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlc_83xx_entry_hdr*)* @qlcnic_83xx_poll_write_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_poll_write_list(%struct.qlcnic_adapter* %0, %struct.qlc_83xx_entry_hdr* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_entry_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.qlc_83xx_quad_entry*, align 8
  %8 = alloca %struct.qlc_83xx_poll*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlc_83xx_entry_hdr* %1, %struct.qlc_83xx_entry_hdr** %4, align 8
  %9 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %10 = bitcast %struct.qlc_83xx_entry_hdr* %9 to i8*
  %11 = getelementptr inbounds i8, i8* %10, i64 16
  %12 = bitcast i8* %11 to %struct.qlc_83xx_poll*
  store %struct.qlc_83xx_poll* %12, %struct.qlc_83xx_poll** %8, align 8
  %13 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %8, align 8
  %14 = bitcast %struct.qlc_83xx_poll* %13 to i8*
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  %16 = bitcast i8* %15 to %struct.qlc_83xx_quad_entry*
  store %struct.qlc_83xx_quad_entry* %16, %struct.qlc_83xx_quad_entry** %7, align 8
  %17 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %59, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %64

26:                                               ; preds = %20
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %7, align 8
  %29 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %7, align 8
  %32 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %27, i32 %30, i32 %33)
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %7, align 8
  %37 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %7, align 8
  %40 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %35, i32 %38, i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %26
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %7, align 8
  %48 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %8, align 8
  %52 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %8, align 8
  %55 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter* %46, i32 %49, i64 %50, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %45, %26
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  %62 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %7, align 8
  %63 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %62, i32 1
  store %struct.qlc_83xx_quad_entry* %63, %struct.qlc_83xx_quad_entry** %7, align 8
  br label %20

64:                                               ; preds = %20
  ret void
}

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
