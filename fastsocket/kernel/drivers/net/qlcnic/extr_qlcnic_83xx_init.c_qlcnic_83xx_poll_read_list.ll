; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_read_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_poll_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%struct.qlc_83xx_entry_hdr = type { i32, i64 }
%struct.qlc_83xx_quad_entry = type { i64, i32, i32 }
%struct.qlc_83xx_poll = type { i32, i32 }

@QLC_83XX_MAX_RESET_SEQ_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlc_83xx_entry_hdr*)* @qlcnic_83xx_poll_read_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_83xx_poll_read_list(%struct.qlcnic_adapter* %0, %struct.qlc_83xx_entry_hdr* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlc_83xx_entry_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlc_83xx_quad_entry*, align 8
  %10 = alloca %struct.qlc_83xx_poll*, align 8
  %11 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlc_83xx_entry_hdr* %1, %struct.qlc_83xx_entry_hdr** %4, align 8
  %12 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %13 = bitcast %struct.qlc_83xx_entry_hdr* %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 16
  %15 = bitcast i8* %14 to %struct.qlc_83xx_poll*
  store %struct.qlc_83xx_poll* %15, %struct.qlc_83xx_poll** %10, align 8
  %16 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %10, align 8
  %17 = bitcast %struct.qlc_83xx_poll* %16 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = bitcast i8* %18 to %struct.qlc_83xx_quad_entry*
  store %struct.qlc_83xx_quad_entry* %19, %struct.qlc_83xx_quad_entry** %9, align 8
  %20 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %21 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %90, %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.qlc_83xx_entry_hdr*, %struct.qlc_83xx_entry_hdr** %4, align 8
  %26 = getelementptr inbounds %struct.qlc_83xx_entry_hdr, %struct.qlc_83xx_entry_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %95

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %9, align 8
  %32 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %9, align 8
  %35 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter* %30, i32 %33, i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %29
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %42 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %9, align 8
  %43 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %10, align 8
  %47 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qlc_83xx_poll*, %struct.qlc_83xx_poll** %10, align 8
  %50 = getelementptr inbounds %struct.qlc_83xx_poll, %struct.qlc_83xx_poll* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter* %41, i32 %44, i64 %45, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %40
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %6, align 4
  %61 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %9, align 8
  %62 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %11, align 8
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter* %64, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %67, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @QLC_83XX_MAX_RESET_SEQ_ENTRIES, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %54
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %81, %54
  br label %88

88:                                               ; preds = %87, %40
  br label %89

89:                                               ; preds = %88, %29
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load %struct.qlc_83xx_quad_entry*, %struct.qlc_83xx_quad_entry** %9, align 8
  %94 = getelementptr inbounds %struct.qlc_83xx_quad_entry, %struct.qlc_83xx_quad_entry* %93, i32 1
  store %struct.qlc_83xx_quad_entry* %94, %struct.qlc_83xx_quad_entry** %9, align 8
  br label %23

95:                                               ; preds = %23
  ret void
}

declare dso_local i32 @qlcnic_83xx_wrt_reg_indirect(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_poll_reg(%struct.qlcnic_adapter*, i32, i64, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_rd_reg_indirect(%struct.qlcnic_adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
