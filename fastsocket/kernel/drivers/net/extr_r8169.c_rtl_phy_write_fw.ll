; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_phy_write_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl_phy_write_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.rtl_fw = type { %struct.rtl_fw_phy_action }
%struct.rtl_fw_phy_action = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*, %struct.rtl_fw*)* @rtl_phy_write_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_phy_write_fw(%struct.rtl8169_private* %0, %struct.rtl_fw* %1) #0 {
  %3 = alloca %struct.rtl8169_private*, align 8
  %4 = alloca %struct.rtl_fw*, align 8
  %5 = alloca %struct.rtl_fw_phy_action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %3, align 8
  store %struct.rtl_fw* %1, %struct.rtl_fw** %4, align 8
  %12 = load %struct.rtl_fw*, %struct.rtl_fw** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_fw, %struct.rtl_fw* %12, i32 0, i32 0
  store %struct.rtl_fw_phy_action* %13, %struct.rtl_fw_phy_action** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %134, %2
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %5, align 8
  %17 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %135

20:                                               ; preds = %14
  %21 = load %struct.rtl_fw_phy_action*, %struct.rtl_fw_phy_action** %5, align 8
  %22 = getelementptr inbounds %struct.rtl_fw_phy_action, %struct.rtl_fw_phy_action* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 65535
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 268369920
  %32 = ashr i32 %31, 16
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  br label %135

36:                                               ; preds = %20
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, -268435456
  switch i32 %38, label %132 [
    i32 136, label %39
    i32 138, label %47
    i32 139, label %53
    i32 143, label %59
    i32 134, label %64
    i32 142, label %70
    i32 131, label %73
    i32 135, label %80
    i32 141, label %89
    i32 140, label %101
    i32 128, label %113
    i32 132, label %120
    i32 137, label %126
    i32 133, label %131
    i32 129, label %131
    i32 130, label %131
  ]

39:                                               ; preds = %36
  %40 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @rtl_readphy(%struct.rtl8169_private* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %134

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %134

53:                                               ; preds = %36
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %8, align 8
  br label %134

59:                                               ; preds = %36
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %8, align 8
  br label %134

64:                                               ; preds = %36
  %65 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @rtl8168d_efuse_read(%struct.rtl8169_private* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %134

70:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  br label %134

73:                                               ; preds = %36
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @rtl_writephy(%struct.rtl8169_private* %74, i32 %75, i32 %76)
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %134

80:                                               ; preds = %36
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 2, i32 1
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %8, align 8
  br label %134

89:                                               ; preds = %36
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %8, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %134

101:                                              ; preds = %36
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %8, align 8
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %134

113:                                              ; preds = %36
  %114 = load %struct.rtl8169_private*, %struct.rtl8169_private** %3, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @rtl_writephy(%struct.rtl8169_private* %114, i32 %115, i32 %116)
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  br label %134

120:                                              ; preds = %36
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %8, align 8
  br label %134

126:                                              ; preds = %36
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @mdelay(i32 %127)
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %8, align 8
  br label %134

131:                                              ; preds = %36, %36, %36
  br label %132

132:                                              ; preds = %36, %131
  %133 = call i32 (...) @BUG()
  br label %134

134:                                              ; preds = %132, %126, %120, %113, %110, %98, %80, %73, %70, %64, %59, %53, %47, %39
  br label %14

135:                                              ; preds = %35, %14
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168d_efuse_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
