; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_tsf_write_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_tsf_write_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@B43legacy_MMIO_REV3PLUS_TSF_LOW = common dso_local global i32 0, align 4
@B43legacy_MMIO_REV3PLUS_TSF_HIGH = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_0 = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_3 = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_2 = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_tsf_write_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_tsf_write_locked(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 3
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 4294967295
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %24, -4294967296
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = load i32, i32* @B43legacy_MMIO_REV3PLUS_TSF_LOW, align 4
  %30 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %28, i32 %29, i32 0)
  %31 = call i32 (...) @mmiowb()
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %33 = load i32, i32* @B43legacy_MMIO_REV3PLUS_TSF_HIGH, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %32, i32 %33, i32 %34)
  %36 = call i32 (...) @mmiowb()
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %38 = load i32, i32* @B43legacy_MMIO_REV3PLUS_TSF_LOW, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %37, i32 %38, i32 %39)
  br label %84

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 65535
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 4294901760
  %49 = lshr i64 %48, 16
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, 281470681743360
  %54 = lshr i64 %53, 32
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = and i64 %57, -281474976710656
  %59 = lshr i64 %58, 48
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %62 = load i32, i32* @B43legacy_MMIO_TSF_0, align 4
  %63 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %61, i32 %62, i32 0)
  %64 = call i32 (...) @mmiowb()
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %66 = load i32, i32* @B43legacy_MMIO_TSF_3, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %65, i32 %66, i32 %67)
  %69 = call i32 (...) @mmiowb()
  %70 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %71 = load i32, i32* @B43legacy_MMIO_TSF_2, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %70, i32 %71, i32 %72)
  %74 = call i32 (...) @mmiowb()
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %76 = load i32, i32* @B43legacy_MMIO_TSF_1, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %75, i32 %76, i32 %77)
  %79 = call i32 (...) @mmiowb()
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %81 = load i32, i32* @B43legacy_MMIO_TSF_0, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %41, %18
  ret void
}

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
