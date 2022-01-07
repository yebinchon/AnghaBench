; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_sock_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_sock_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { i32, i32* }
%struct.net = type { i32 }
%struct.vxlan_net = type { i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vxlan_sock* @vxlan_sock_add(%struct.net* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.vxlan_sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vxlan_net*, align 8
  %13 = alloca %struct.vxlan_sock*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = load i32, i32* @vxlan_net_id, align 4
  %16 = call %struct.vxlan_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.vxlan_net* %16, %struct.vxlan_net** %12, align 8
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.vxlan_sock* @vxlan_socket_create(%struct.net* %17, i32 %18, i32* %19, i8* %20)
  store %struct.vxlan_sock* %21, %struct.vxlan_sock** %13, align 8
  %22 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %23 = call i32 @IS_ERR(%struct.vxlan_sock* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  store %struct.vxlan_sock* %26, %struct.vxlan_sock** %6, align 8
  br label %68

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  store %struct.vxlan_sock* %31, %struct.vxlan_sock** %6, align 8
  br label %68

32:                                               ; preds = %27
  %33 = load %struct.vxlan_net*, %struct.vxlan_net** %12, align 8
  %34 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.net*, %struct.net** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call %struct.vxlan_sock* @vxlan_find_sock(%struct.net* %36, i32 %37)
  store %struct.vxlan_sock* %38, %struct.vxlan_sock** %13, align 8
  %39 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %40 = icmp ne %struct.vxlan_sock* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %32
  %42 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %43 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp eq i32* %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %49 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %48, i32 0, i32 0
  %50 = call i32 @atomic_inc(i32* %49)
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  %54 = call %struct.vxlan_sock* @ERR_PTR(i32 %53)
  store %struct.vxlan_sock* %54, %struct.vxlan_sock** %13, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.vxlan_net*, %struct.vxlan_net** %12, align 8
  %58 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %61 = icmp ne %struct.vxlan_sock* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call %struct.vxlan_sock* @ERR_PTR(i32 %64)
  store %struct.vxlan_sock* %65, %struct.vxlan_sock** %13, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  store %struct.vxlan_sock* %67, %struct.vxlan_sock** %6, align 8
  br label %68

68:                                               ; preds = %66, %30, %25
  %69 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  ret %struct.vxlan_sock* %69
}

declare dso_local %struct.vxlan_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.vxlan_sock* @vxlan_socket_create(%struct.net*, i32, i32*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.vxlan_sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vxlan_sock* @vxlan_find_sock(%struct.net*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.vxlan_sock* @ERR_PTR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
