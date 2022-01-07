; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_eeprom.c_p54_update_channel_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_eeprom.c_p54_update_channel_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_channel_entry = type { i64, i32, i64, i64, i32 }
%struct.p54_channel_list = type { i32, i32, %struct.p54_channel_entry*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p54_channel_entry* (%struct.p54_channel_list*, i64, i64)* @p54_update_channel_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p54_channel_entry* @p54_update_channel_param(%struct.p54_channel_list* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.p54_channel_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.p54_channel_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.p54_channel_list* %0, %struct.p54_channel_list** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.p54_channel_entry* null, %struct.p54_channel_entry** %8, align 8
  %10 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %11 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %19 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %18, i32 0, i32 2
  %20 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %20, i64 %22
  %24 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %17, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %29 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %28, i32 0, i32 2
  %30 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %30, i64 %32
  store %struct.p54_channel_entry* %33, %struct.p54_channel_entry** %8, align 8
  br label %38

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %13

38:                                               ; preds = %27, %13
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %88

41:                                               ; preds = %38
  %42 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %43 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %46 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %41
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @p54_get_band_from_freq(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  %55 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %56 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  store i32 %57, i32* %7, align 4
  %59 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %60 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.p54_channel_list*, %struct.p54_channel_list** %4, align 8
  %68 = getelementptr inbounds %struct.p54_channel_list, %struct.p54_channel_list* %67, i32 0, i32 2
  %69 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %69, i64 %71
  store %struct.p54_channel_entry* %72, %struct.p54_channel_entry** %8, align 8
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %75 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %78 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ieee80211_frequency_to_channel(i64 %79)
  %81 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %82 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %84 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %86 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %54, %49
  br label %88

88:                                               ; preds = %87, %41, %38
  %89 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %90 = icmp ne %struct.p54_channel_entry* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  %94 = getelementptr inbounds %struct.p54_channel_entry, %struct.p54_channel_entry* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = or i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %91, %88
  %98 = load %struct.p54_channel_entry*, %struct.p54_channel_entry** %8, align 8
  ret %struct.p54_channel_entry* %98
}

declare dso_local i32 @p54_get_band_from_freq(i64) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
