; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, %struct.TYPE_2__, %struct.tun_file* }
%struct.TYPE_2__ = type { i32, %struct.file* }
%struct.tun_file = type { i32, %struct.tun_struct* }
%struct.file = type { %struct.tun_file* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, %struct.file*)* @tun_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_attach(%struct.tun_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tun_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.tun_file*, align 8
  %6 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.tun_file*, %struct.tun_file** %8, align 8
  store %struct.tun_file* %9, %struct.tun_file** %5, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %12 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @netif_tx_lock_bh(i32 %13)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %18 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %17, i32 0, i32 1
  %19 = load %struct.tun_struct*, %struct.tun_struct** %18, align 8
  %20 = icmp ne %struct.tun_struct* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %53

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %25, i32 0, i32 2
  %27 = load %struct.tun_file*, %struct.tun_file** %26, align 8
  %28 = icmp ne %struct.tun_file* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %53

30:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  %31 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %32 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %33 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %32, i32 0, i32 1
  store %struct.tun_struct* %31, %struct.tun_struct** %33, align 8
  %34 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %35 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %36 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %35, i32 0, i32 2
  store %struct.tun_file* %34, %struct.tun_file** %36, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %39 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.file* %37, %struct.file** %40, align 8
  %41 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %42 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_hold(i32 %43)
  %45 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %46 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sock_hold(i32 %48)
  %50 = load %struct.tun_file*, %struct.tun_file** %5, align 8
  %51 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %50, i32 0, i32 0
  %52 = call i32 @atomic_inc(i32* %51)
  br label %53

53:                                               ; preds = %30, %29, %21
  %54 = load %struct.tun_struct*, %struct.tun_struct** %3, align 8
  %55 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @netif_tx_unlock_bh(i32 %56)
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @sock_hold(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
