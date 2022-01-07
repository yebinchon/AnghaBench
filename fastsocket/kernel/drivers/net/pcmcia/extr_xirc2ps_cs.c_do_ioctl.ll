; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_xirc2ps_cs.c_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ifreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"%s: ioctl(%-.6s, %#04x) %04x %04x %04x %04x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %11)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %17 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %16)
  store %struct.mii_ioctl_data* %17, %struct.mii_ioctl_data** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %22 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %27 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %30 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %82

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %78 [
    i32 130, label %48
    i32 129, label %51
    i32 128, label %64
  ]

48:                                               ; preds = %46
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %48
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  %57 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %58 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 31
  %61 = call i32 @mii_rd(i32 %52, i32 %56, i32 %60)
  %62 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %63 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %81

64:                                               ; preds = %46
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %67 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 31
  %70 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %71 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 31
  %74 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %75 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mii_wr(i32 %65, i32 %69, i32 %73, i32 %76, i32 16)
  br label %81

78:                                               ; preds = %46
  %79 = load i32, i32* @EOPNOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %64, %51
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %43
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mii_rd(i32, i32, i32) #1

declare dso_local i32 @mii_wr(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
