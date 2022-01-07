; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com20020.c_com20020_set_mc_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arcnet/extr_com20020.c_com20020_set_mc_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.arcnet_local = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@PROMISCset = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Setting promiscuous flag...\0A\00", align 1
@SUB_SETUP1 = common dso_local global i32 0, align 4
@_XREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Resetting promiscuous flag...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @com20020_set_mc_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @com20020_set_mc_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arcnet_local*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %5)
  store %struct.arcnet_local* %6, %struct.arcnet_local** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_UP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %25 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PROMISCset, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @D_NORMAL, align 4
  %32 = call i32 @BUGMSG(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = load i32, i32* @SUB_SETUP1, align 4
  %35 = call i32 @SET_SUBADR(i32 %34)
  %36 = load i32, i32* @PROMISCset, align 4
  %37 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %38 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %42 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @_XREG, align 4
  %45 = call i32 @outb(i32 %43, i32 %44)
  br label %70

46:                                               ; preds = %16, %1
  %47 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %48 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PROMISCset, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @D_NORMAL, align 4
  %55 = call i32 @BUGMSG(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* @SUB_SETUP1, align 4
  %58 = call i32 @SET_SUBADR(i32 %57)
  %59 = load i32, i32* @PROMISCset, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %62 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %66 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @_XREG, align 4
  %69 = call i32 @outb(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %56, %33
  ret void
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUGMSG(i32, i8*) #1

declare dso_local i32 @SET_SUBADR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
