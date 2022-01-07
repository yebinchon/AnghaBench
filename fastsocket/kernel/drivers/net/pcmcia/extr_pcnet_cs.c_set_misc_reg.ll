; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_set_misc_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_pcnet_cs.c_set_misc_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@HAS_MISC_REG = common dso_local global i32 0, align 4
@PCNET_MISC = common dso_local global i64 0, align 8
@USE_BIG_BUF = common dso_local global i32 0, align 4
@HAS_IBM_MISC = common dso_local global i32 0, align 4
@IS_DL10022 = common dso_local global i32 0, align 4
@HAS_MII = common dso_local global i32 0, align 4
@DLINK_GPIO = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@full_duplex = common dso_local global i64 0, align 8
@DLINK_DIAG = common dso_local global i64 0, align 8
@IS_DL10019 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_misc_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_misc_reg(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.TYPE_3__* @PRIV(%struct.net_device* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HAS_MISC_REG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* @PCNET_MISC, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @inb_p(i64 %21)
  %23 = and i32 %22, -4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %17
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USE_BIG_BUF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, 2
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HAS_IBM_MISC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 8
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @PCNET_MISC, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb_p(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %51, %1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IS_DL10022, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %58
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HAS_MII, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %65
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @DLINK_GPIO, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mdio_write(i64 %76, i32 %79, i32 4, i32 481)
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* @DLINK_GPIO, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mdio_write(i64 %84, i32 %87, i32 0, i32 0)
  %89 = load i32, i32* %3, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* @DLINK_GPIO, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @mdio_write(i64 %92, i32 %95, i32 0, i32 4608)
  %97 = load i32, i32* @jiffies, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %110

100:                                              ; preds = %65
  %101 = load i64, i64* @full_duplex, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 4, i32 0
  %105 = load i32, i32* %3, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* @DLINK_DIAG, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outb(i32 %104, i64 %108)
  br label %110

110:                                              ; preds = %100, %72
  br label %144

111:                                              ; preds = %58
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @IS_DL10019, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %111
  %119 = load i32, i32* %3, align 4
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* @DLINK_GPIO, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mdio_write(i64 %122, i32 %125, i32 4, i32 481)
  %127 = load i32, i32* %3, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* @DLINK_GPIO, align 8
  %130 = add nsw i64 %128, %129
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mdio_write(i64 %130, i32 %133, i32 0, i32 0)
  %135 = load i32, i32* %3, align 4
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* @DLINK_GPIO, align 8
  %138 = add nsw i64 %136, %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mdio_write(i64 %138, i32 %141, i32 0, i32 4608)
  br label %143

143:                                              ; preds = %118, %111
  br label %144

144:                                              ; preds = %143, %110
  ret void
}

declare dso_local %struct.TYPE_3__* @PRIV(%struct.net_device*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @mdio_write(i64, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
