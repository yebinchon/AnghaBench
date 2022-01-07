; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_register_net_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_generic.c_ppp_register_net_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ppp_channel = type { i32, %struct.channel* }
%struct.channel = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, %struct.net*, %struct.ppp_channel*, i32* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ppp_net = type { i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHANNEL = common dso_local global i32 0, align 4
@channel_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ppp_register_net_channel(%struct.net* %0, %struct.ppp_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ppp_channel*, align 8
  %6 = alloca %struct.channel*, align 8
  %7 = alloca %struct.ppp_net*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.ppp_channel* %1, %struct.ppp_channel** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.channel* @kzalloc(i32 64, i32 %8)
  store %struct.channel* %9, %struct.channel** %6, align 8
  %10 = load %struct.channel*, %struct.channel** %6, align 8
  %11 = icmp ne %struct.channel* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = call %struct.ppp_net* @ppp_pernet(%struct.net* %16)
  store %struct.ppp_net* %17, %struct.ppp_net** %7, align 8
  %18 = load %struct.channel*, %struct.channel** %6, align 8
  %19 = getelementptr inbounds %struct.channel, %struct.channel* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  %20 = load %struct.ppp_channel*, %struct.ppp_channel** %5, align 8
  %21 = load %struct.channel*, %struct.channel** %6, align 8
  %22 = getelementptr inbounds %struct.channel, %struct.channel* %21, i32 0, i32 7
  store %struct.ppp_channel* %20, %struct.ppp_channel** %22, align 8
  %23 = load %struct.net*, %struct.net** %4, align 8
  %24 = load %struct.channel*, %struct.channel** %6, align 8
  %25 = getelementptr inbounds %struct.channel, %struct.channel* %24, i32 0, i32 6
  store %struct.net* %23, %struct.net** %25, align 8
  %26 = load %struct.channel*, %struct.channel** %6, align 8
  %27 = load %struct.ppp_channel*, %struct.ppp_channel** %5, align 8
  %28 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %27, i32 0, i32 1
  store %struct.channel* %26, %struct.channel** %28, align 8
  %29 = load %struct.channel*, %struct.channel** %6, align 8
  %30 = getelementptr inbounds %struct.channel, %struct.channel* %29, i32 0, i32 2
  %31 = load i32, i32* @CHANNEL, align 4
  %32 = call i32 @init_ppp_file(%struct.TYPE_2__* %30, i32 %31)
  %33 = load %struct.ppp_channel*, %struct.ppp_channel** %5, align 8
  %34 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.channel*, %struct.channel** %6, align 8
  %37 = getelementptr inbounds %struct.channel, %struct.channel* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.channel*, %struct.channel** %6, align 8
  %40 = getelementptr inbounds %struct.channel, %struct.channel* %39, i32 0, i32 5
  %41 = call i32 @init_rwsem(i32* %40)
  %42 = load %struct.channel*, %struct.channel** %6, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 4
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.channel*, %struct.channel** %6, align 8
  %46 = getelementptr inbounds %struct.channel, %struct.channel* %45, i32 0, i32 3
  %47 = call i32 @rwlock_init(i32* %46)
  %48 = load %struct.ppp_net*, %struct.ppp_net** %7, align 8
  %49 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %48, i32 0, i32 0
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.ppp_net*, %struct.ppp_net** %7, align 8
  %52 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.channel*, %struct.channel** %6, align 8
  %56 = getelementptr inbounds %struct.channel, %struct.channel* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.channel*, %struct.channel** %6, align 8
  %59 = getelementptr inbounds %struct.channel, %struct.channel* %58, i32 0, i32 1
  %60 = load %struct.ppp_net*, %struct.ppp_net** %7, align 8
  %61 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %60, i32 0, i32 1
  %62 = call i32 @list_add(i32* %59, i32* %61)
  %63 = call i32 @atomic_inc(i32* @channel_count)
  %64 = load %struct.ppp_net*, %struct.ppp_net** %7, align 8
  %65 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %15, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.channel* @kzalloc(i32, i32) #1

declare dso_local %struct.ppp_net* @ppp_pernet(%struct.net*) #1

declare dso_local i32 @init_ppp_file(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
