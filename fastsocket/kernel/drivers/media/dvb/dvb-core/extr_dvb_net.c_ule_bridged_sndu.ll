; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_ule_bridged_sndu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_net.c_ule_bridged_sndu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ethhdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net_priv*)* @ule_bridged_sndu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ule_bridged_sndu(%struct.dvb_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_net_priv*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_net_priv* %0, %struct.dvb_net_priv** %3, align 8
  %6 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.ethhdr*
  store %struct.ethhdr* %10, %struct.ethhdr** %4, align 8
  %11 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %12 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  %15 = icmp slt i32 %14, 1536
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %27 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %25, %31
  %33 = sub i64 %20, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %37 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ntohs(i32 %38)
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %46

42:                                               ; preds = %16
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %41
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
