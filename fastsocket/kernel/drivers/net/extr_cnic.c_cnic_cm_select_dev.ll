; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_select_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_select_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.sockaddr_in = type { i64 }
%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@ENETUNREACH = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cnic_dev* (%struct.sockaddr_in*, i32)* @cnic_cm_select_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cnic_dev* @cnic_cm_select_dev(%struct.sockaddr_in* %0, i32 %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.sockaddr_in*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.dst_entry*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cnic_dev* null, %struct.cnic_dev** %6, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  %11 = load i32, i32* @ENETUNREACH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AF_INET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %20 = call i32 @cnic_get_v4_route(%struct.sockaddr_in* %19, %struct.dst_entry** %7)
  store i32 %20, i32* %9, align 4
  br label %34

21:                                               ; preds = %2
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %4, align 8
  %29 = bitcast %struct.sockaddr_in* %28 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %29, %struct.sockaddr_in6** %10, align 8
  %30 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %31 = call i32 @cnic_get_v6_route(%struct.sockaddr_in6* %30, %struct.dst_entry** %7)
  store i32 %31, i32* %9, align 4
  br label %33

32:                                               ; preds = %21
  store %struct.cnic_dev* null, %struct.cnic_dev** %3, align 8
  br label %61

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store %struct.cnic_dev* null, %struct.cnic_dev** %3, align 8
  br label %61

38:                                               ; preds = %34
  %39 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %40 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %51

44:                                               ; preds = %38
  %45 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %46 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cnic_get_vlan(i32 %47, %struct.net_device** %8)
  %49 = load %struct.net_device*, %struct.net_device** %8, align 8
  %50 = call %struct.cnic_dev* @cnic_from_netdev(%struct.net_device* %49)
  store %struct.cnic_dev* %50, %struct.cnic_dev** %6, align 8
  br label %51

51:                                               ; preds = %44, %43
  %52 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  %53 = call i32 @dst_release(%struct.dst_entry* %52)
  %54 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %55 = icmp ne %struct.cnic_dev* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %58 = call i32 @cnic_put(%struct.cnic_dev* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  store %struct.cnic_dev* %60, %struct.cnic_dev** %3, align 8
  br label %61

61:                                               ; preds = %59, %37, %32
  %62 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  ret %struct.cnic_dev* %62
}

declare dso_local i32 @cnic_get_v4_route(%struct.sockaddr_in*, %struct.dst_entry**) #1

declare dso_local i32 @cnic_get_v6_route(%struct.sockaddr_in6*, %struct.dst_entry**) #1

declare dso_local i32 @cnic_get_vlan(i32, %struct.net_device**) #1

declare dso_local %struct.cnic_dev* @cnic_from_netdev(%struct.net_device*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @cnic_put(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
