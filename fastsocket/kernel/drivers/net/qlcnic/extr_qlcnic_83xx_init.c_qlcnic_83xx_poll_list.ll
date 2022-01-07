; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlc_83xx_entry_hdr = type { i32, i64 }
%struct.qlc_83xx_entry = type { i64, i64 }
%struct.qlc_83xx_poll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlc_83xx_entry_hdr*)* @qlcnic_83xx_poll_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_poll_list(%struct.qlcnic_adapter* %0, %struct.qlc_83xx_entry_hdr* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_entry_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qlc_83xx_entry*, align 8
  %7 = alloca %struct.qlc_83xx_poll*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlc_83xx_entry_hdr* %1, %struct.qlc_83xx_entry_hdr** %4, align 8
  %11 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %12 = bitcast %struct.qlc_83xx_entry_hdr* %11 to i8*
  %13 = getelementptr inbounds i8, i8* %12, i64 16
  %14 = bitcast i8* %13 to %struct.qlc_83xx_poll*
  store %struct.qlc_83xx_poll* %14, %struct.qlc_83xx_poll** %7, align 8
  %15 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %7, align 8
  %16 = bitcast %struct.qlc_83xx_poll* %15 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 8
  %18 = bitcast i8* %17 to %struct.qlc_83xx_entry*
  store %struct.qlc_83xx_entry* %18, %struct.qlc_83xx_entry** %6, align 8
  %19 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %20 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %34 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %7, align 8
  %38 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %7, align 8
  %41 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter* %32, i64 %35, i64 %36, i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %48 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %47, i32 1
  store %struct.qlc_83xx_entry* %48, %struct.qlc_83xx_entry** %6, align 8
  br label %25

49:                                               ; preds = %25
  br label %93

50:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %87, %50
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  %58 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %59 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %62 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %5, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %57
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %7, align 8
  %71 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %7, align 8
  %74 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter* %67, i64 %68, i64 %69, i32 %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %79, i64 %80)
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %66
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load %struct.qlc_83xx_entry*, %struct.qlc_83xx_entry** %6, align 8
  %91 = getelementptr inbounds %struct.qlc_83xx_entry, %struct.qlc_83xx_entry* %90, i32 1
  store %struct.qlc_83xx_entry* %91, %struct.qlc_83xx_entry** %6, align 8
  br label %51

92:                                               ; preds = %51
  br label %93

93:                                               ; preds = %92, %49
  ret void
}

declare dso_local i64 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter*, i64, i64, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
