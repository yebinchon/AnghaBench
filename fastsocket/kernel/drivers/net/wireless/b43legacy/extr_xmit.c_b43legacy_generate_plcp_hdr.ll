; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_generate_plcp_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_generate_plcp_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_plcp_hdr4 = type { i32*, i32 }

@B43legacy_CCK_RATE_11MB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_generate_plcp_hdr(%struct.b43legacy_plcp_hdr4* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43legacy_plcp_hdr4*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_plcp_hdr4* %0, %struct.b43legacy_plcp_hdr4** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.b43legacy_plcp_hdr4*, %struct.b43legacy_plcp_hdr4** %4, align 8
  %12 = getelementptr inbounds %struct.b43legacy_plcp_hdr4, %struct.b43legacy_plcp_hdr4* %11, i32 0, i32 1
  store i32* %12, i32** %7, align 8
  %13 = load %struct.b43legacy_plcp_hdr4*, %struct.b43legacy_plcp_hdr4** %4, align 8
  %14 = getelementptr inbounds %struct.b43legacy_plcp_hdr4, %struct.b43legacy_plcp_hdr4* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @b43legacy_is_ofdm_rate(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @b43legacy_plcp_get_ratecode_ofdm(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 61440
  %24 = call i32 @B43legacy_WARN_ON(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 5
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %74

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 16
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 16
  %39 = load i32, i32* %6, align 4
  %40 = srem i32 %38, %39
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @B43legacy_CCK_RATE_11MB, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = mul nsw i32 %49, 8
  %51 = srem i32 %50, 11
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 132, i32* %55, align 4
  br label %59

56:                                               ; preds = %48, %42
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 4, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %63

60:                                               ; preds = %32
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 4, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %64, 16
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @b43legacy_plcp_get_ratecode_cck(i32 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %63, %19
  ret void
}

declare dso_local i64 @b43legacy_is_ofdm_rate(i32) #1

declare dso_local i32 @b43legacy_plcp_get_ratecode_ofdm(i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @b43legacy_plcp_get_ratecode_cck(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
