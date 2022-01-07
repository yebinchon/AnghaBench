; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_ht.c_b43_phy_ht_tables_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_tables_phy_ht.c_b43_phy_ht_tables_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@b43_httab_0x1a_0xc0_late = common dso_local global i32 0, align 4
@B43_HTTAB_1A_C0_LATE_SIZE = common dso_local global i64 0, align 8
@b43_httab_0x12 = common dso_local global i32 0, align 4
@b43_httab_0x27 = common dso_local global i32 0, align 4
@b43_httab_0x26 = common dso_local global i32 0, align 4
@b43_httab_0x25 = common dso_local global i32 0, align 4
@b43_httab_0x2f = common dso_local global i32 0, align 4
@b43_httab_0x1a = common dso_local global i32 0, align 4
@b43_httab_0x1b = common dso_local global i32 0, align 4
@b43_httab_0x1c = common dso_local global i32 0, align 4
@b43_httab_0x1a_0xc0 = common dso_local global i32 0, align 4
@b43_httab_0x1a_0x140 = common dso_local global i32 0, align 4
@b43_httab_0x1b_0x140 = common dso_local global i32 0, align 4
@b43_httab_0x1c_0x140 = common dso_local global i32 0, align 4
@b43_httab_0x1a_0x1c0 = common dso_local global i32 0, align 4
@b43_httab_0x1b_0x1c0 = common dso_local global i32 0, align 4
@b43_httab_0x1c_0x1c0 = common dso_local global i32 0, align 4
@b43_httab_0x1a_0x240 = common dso_local global i32 0, align 4
@b43_httab_0x1b_0x240 = common dso_local global i32 0, align 4
@b43_httab_0x1c_0x240 = common dso_local global i32 0, align 4
@b43_httab_0x1f = common dso_local global i32 0, align 4
@b43_httab_0x21 = common dso_local global i32 0, align 4
@b43_httab_0x23 = common dso_local global i32 0, align 4
@b43_httab_0x20 = common dso_local global i32 0, align 4
@b43_httab_0x22 = common dso_local global i32 0, align 4
@b43_httab_0x24 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_ht_tables_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load i32, i32* @b43_httab_0x1a_0xc0_late, align 4
  %4 = call i64 @ARRAY_SIZE(i32 %3)
  %5 = load i64, i64* @B43_HTTAB_1A_C0_LATE_SIZE, align 8
  %6 = icmp ne i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUILD_BUG_ON(i32 %7)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = call i32 @B43_HTTAB16(i32 18, i32 0)
  %11 = load i32, i32* @b43_httab_0x12, align 4
  %12 = call i32 @httab_upload(%struct.b43_wldev* %9, i32 %10, i32 %11)
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %14 = call i32 @B43_HTTAB16(i32 39, i32 0)
  %15 = load i32, i32* @b43_httab_0x27, align 4
  %16 = call i32 @httab_upload(%struct.b43_wldev* %13, i32 %14, i32 %15)
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i32 @B43_HTTAB16(i32 38, i32 0)
  %19 = load i32, i32* @b43_httab_0x26, align 4
  %20 = call i32 @httab_upload(%struct.b43_wldev* %17, i32 %18, i32 %19)
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %22 = call i32 @B43_HTTAB32(i32 37, i32 0)
  %23 = load i32, i32* @b43_httab_0x25, align 4
  %24 = call i32 @httab_upload(%struct.b43_wldev* %21, i32 %22, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %26 = call i32 @B43_HTTAB32(i32 47, i32 0)
  %27 = load i32, i32* @b43_httab_0x2f, align 4
  %28 = call i32 @httab_upload(%struct.b43_wldev* %25, i32 %26, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %30 = call i32 @B43_HTTAB16(i32 26, i32 0)
  %31 = load i32, i32* @b43_httab_0x1a, align 4
  %32 = call i32 @httab_upload(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %34 = call i32 @B43_HTTAB16(i32 27, i32 0)
  %35 = load i32, i32* @b43_httab_0x1b, align 4
  %36 = call i32 @httab_upload(%struct.b43_wldev* %33, i32 %34, i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %38 = call i32 @B43_HTTAB16(i32 28, i32 0)
  %39 = load i32, i32* @b43_httab_0x1c, align 4
  %40 = call i32 @httab_upload(%struct.b43_wldev* %37, i32 %38, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %42 = call i32 @B43_HTTAB32(i32 26, i32 192)
  %43 = load i32, i32* @b43_httab_0x1a_0xc0, align 4
  %44 = call i32 @httab_upload(%struct.b43_wldev* %41, i32 %42, i32 %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %46 = call i32 @B43_HTTAB32(i32 26, i32 320)
  %47 = load i32, i32* @b43_httab_0x1a_0x140, align 4
  %48 = call i32 @httab_upload(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %50 = call i32 @B43_HTTAB32(i32 27, i32 320)
  %51 = load i32, i32* @b43_httab_0x1b_0x140, align 4
  %52 = call i32 @httab_upload(%struct.b43_wldev* %49, i32 %50, i32 %51)
  %53 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %54 = call i32 @B43_HTTAB32(i32 28, i32 320)
  %55 = load i32, i32* @b43_httab_0x1c_0x140, align 4
  %56 = call i32 @httab_upload(%struct.b43_wldev* %53, i32 %54, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %58 = call i32 @B43_HTTAB16(i32 26, i32 448)
  %59 = load i32, i32* @b43_httab_0x1a_0x1c0, align 4
  %60 = call i32 @httab_upload(%struct.b43_wldev* %57, i32 %58, i32 %59)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %62 = call i32 @B43_HTTAB16(i32 27, i32 448)
  %63 = load i32, i32* @b43_httab_0x1b_0x1c0, align 4
  %64 = call i32 @httab_upload(%struct.b43_wldev* %61, i32 %62, i32 %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = call i32 @B43_HTTAB16(i32 28, i32 448)
  %67 = load i32, i32* @b43_httab_0x1c_0x1c0, align 4
  %68 = call i32 @httab_upload(%struct.b43_wldev* %65, i32 %66, i32 %67)
  %69 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %70 = call i32 @B43_HTTAB16(i32 26, i32 576)
  %71 = load i32, i32* @b43_httab_0x1a_0x240, align 4
  %72 = call i32 @httab_upload(%struct.b43_wldev* %69, i32 %70, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %74 = call i32 @B43_HTTAB16(i32 27, i32 576)
  %75 = load i32, i32* @b43_httab_0x1b_0x240, align 4
  %76 = call i32 @httab_upload(%struct.b43_wldev* %73, i32 %74, i32 %75)
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %78 = call i32 @B43_HTTAB16(i32 28, i32 576)
  %79 = load i32, i32* @b43_httab_0x1c_0x240, align 4
  %80 = call i32 @httab_upload(%struct.b43_wldev* %77, i32 %78, i32 %79)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %82 = call i32 @B43_HTTAB32(i32 31, i32 0)
  %83 = load i32, i32* @b43_httab_0x1f, align 4
  %84 = call i32 @httab_upload(%struct.b43_wldev* %81, i32 %82, i32 %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %86 = call i32 @B43_HTTAB32(i32 33, i32 0)
  %87 = load i32, i32* @b43_httab_0x21, align 4
  %88 = call i32 @httab_upload(%struct.b43_wldev* %85, i32 %86, i32 %87)
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %90 = call i32 @B43_HTTAB32(i32 35, i32 0)
  %91 = load i32, i32* @b43_httab_0x23, align 4
  %92 = call i32 @httab_upload(%struct.b43_wldev* %89, i32 %90, i32 %91)
  %93 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %94 = call i32 @B43_HTTAB32(i32 32, i32 0)
  %95 = load i32, i32* @b43_httab_0x20, align 4
  %96 = call i32 @httab_upload(%struct.b43_wldev* %93, i32 %94, i32 %95)
  %97 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %98 = call i32 @B43_HTTAB32(i32 34, i32 0)
  %99 = load i32, i32* @b43_httab_0x22, align 4
  %100 = call i32 @httab_upload(%struct.b43_wldev* %97, i32 %98, i32 %99)
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %102 = call i32 @B43_HTTAB32(i32 36, i32 0)
  %103 = load i32, i32* @b43_httab_0x24, align 4
  %104 = call i32 @httab_upload(%struct.b43_wldev* %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @httab_upload(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_HTTAB16(i32, i32) #1

declare dso_local i32 @B43_HTTAB32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
