; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_updt_xpak_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_updt_xpak_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.s2io_nic = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.stat_block* }
%struct.stat_block = type { %struct.xpakStat }
%struct.xpakStat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ERR: MDIO slave access failed - Returned %llx\0A\00", align 1
@MDIO_CTRL1_SPEED10G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Incorrect value at PMA address 0x0000 - Returned: %llx- Expected: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @s2io_updt_xpak_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_updt_xpak_counter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.s2io_nic*, align 8
  %9 = alloca %struct.stat_block*, align 8
  %10 = alloca %struct.xpakStat*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %11)
  store %struct.s2io_nic* %12, %struct.s2io_nic** %8, align 8
  %13 = load %struct.s2io_nic*, %struct.s2io_nic** %8, align 8
  %14 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.stat_block*, %struct.stat_block** %15, align 8
  store %struct.stat_block* %16, %struct.stat_block** %9, align 8
  %17 = load %struct.stat_block*, %struct.stat_block** %9, align 8
  %18 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %17, i32 0, i32 0
  store %struct.xpakStat* %18, %struct.xpakStat** %10, align 8
  %19 = load i32, i32* @MDIO_CTRL1, align 4
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @s2io_mdio_read(i32 %20, i32 %21, %struct.net_device* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 65535
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26, %1
  %30 = load i32, i32* @ERR_DBG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = call i32 (i32, i8*, i64, ...) @DBG_PRINT(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %169

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MDIO_CTRL1_SPEED10G, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @ERR_DBG, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i32, i32* @MDIO_CTRL1_SPEED10G, align 4
  %43 = call i32 (i32, i8*, i64, ...) @DBG_PRINT(i32 %39, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i64 %41, i32 %42)
  br label %169

44:                                               ; preds = %34
  store i32 41216, i32* %7, align 4
  %45 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @s2io_mdio_write(i32 %45, i32 %46, i32 %47, %struct.net_device* %48)
  %50 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @s2io_mdio_read(i32 %50, i32 %51, %struct.net_device* %52)
  store i32 %53, i32* %6, align 4
  store i32 41072, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %54 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @s2io_mdio_read(i32 %54, i32 %55, %struct.net_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @CHECKBIT(i32 %58, i32 7)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %60 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %61 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %60, i32 0, i32 12
  %62 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %63 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %62, i32 0, i32 7
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @s2io_chk_xpak_counter(i32* %61, i32* %63, i32 0, i32 %64, i32 %65)
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @CHECKBIT(i32 %67, i32 6)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %44
  %71 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %72 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %44
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @CHECKBIT(i32 %76, i32 3)
  store i32 %77, i32* %3, align 4
  store i32 2, i32* %4, align 4
  %78 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %79 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %78, i32 0, i32 10
  %80 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %81 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %80, i32 0, i32 7
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @s2io_chk_xpak_counter(i32* %79, i32* %81, i32 2, i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @CHECKBIT(i32 %85, i32 2)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %75
  %89 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %90 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %88, %75
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @CHECKBIT(i32 %94, i32 1)
  store i32 %95, i32* %3, align 4
  store i32 3, i32* %4, align 4
  %96 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %97 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %96, i32 0, i32 8
  %98 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %99 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %98, i32 0, i32 7
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @s2io_chk_xpak_counter(i32* %97, i32* %99, i32 4, i32 %100, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @CHECKBIT(i32 %103, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %93
  %107 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %108 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %93
  store i32 41076, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %112 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = call i32 @s2io_mdio_read(i32 %112, i32 %113, %struct.net_device* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @CHECKBIT(i32 %116, i32 7)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %121 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %111
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @CHECKBIT(i32 %125, i32 6)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %130 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %128, %124
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @CHECKBIT(i32 %134, i32 3)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %139 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %137, %133
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @CHECKBIT(i32 %143, i32 2)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %148 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146, %142
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @CHECKBIT(i32 %152, i32 1)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %157 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %151
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @CHECKBIT(i32 %161, i32 0)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = load %struct.xpakStat*, %struct.xpakStat** %10, align 8
  %166 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %29, %38, %164, %160
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @s2io_mdio_read(i32, i32, %struct.net_device*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i64, ...) #1

declare dso_local i32 @s2io_mdio_write(i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @CHECKBIT(i32, i32) #1

declare dso_local i32 @s2io_chk_xpak_counter(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
