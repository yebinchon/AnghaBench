; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_socket_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { i32, i8*, i32*, i32, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_8__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.vxlan_net = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@vxlan_net_id = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory alocation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VNI_HASH_SIZE = common dso_local global i32 0, align 4
@vxlan_del_work = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"UDP socket create failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bind for UDP socket %pI4:%u (%d)\0A\00", align 1
@vxlan_udp_encap_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxlan_sock* (%struct.net*, i32, i32*, i8*)* @vxlan_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxlan_sock* @vxlan_socket_create(%struct.net* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.vxlan_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vxlan_net*, align 8
  %11 = alloca %struct.vxlan_sock*, align 8
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net*, %struct.net** %6, align 8
  %17 = load i32, i32* @vxlan_net_id, align 4
  %18 = call %struct.vxlan_net* @net_generic(%struct.net* %16, i32 %17)
  store %struct.vxlan_net* %18, %struct.vxlan_net** %10, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* @INADDR_ANY, align 4
  %24 = call i32 @htonl(i32 %23)
  store i32 %24, i32* %22, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  %26 = load i32, i32* @AF_INET, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.vxlan_sock* @kmalloc(i32 56, i32 %27)
  store %struct.vxlan_sock* %28, %struct.vxlan_sock** %11, align 8
  %29 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %30 = icmp ne %struct.vxlan_sock* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %4
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.vxlan_sock* @ERR_PTR(i32 %34)
  store %struct.vxlan_sock* %35, %struct.vxlan_sock** %5, align 8
  br label %133

36:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @VNI_HASH_SIZE, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %43 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i32 @INIT_HLIST_HEAD(i32* %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %37

52:                                               ; preds = %37
  %53 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %54 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %53, i32 0, i32 5
  %55 = load i32, i32* @vxlan_del_work, align 4
  %56 = call i32 @INIT_WORK(i32* %54, i32 %55)
  %57 = load i32, i32* @AF_INET, align 4
  %58 = load i32, i32* @SOCK_DGRAM, align 4
  %59 = load i32, i32* @IPPROTO_UDP, align 4
  %60 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %61 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %60, i32 0, i32 4
  %62 = call i32 @sock_create_kern(i32 %57, i32 %58, i32 %59, %struct.TYPE_8__** %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %52
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %68 = call i32 @kfree(%struct.vxlan_sock* %67)
  %69 = load i32, i32* %14, align 4
  %70 = call %struct.vxlan_sock* @ERR_PTR(i32 %69)
  store %struct.vxlan_sock* %70, %struct.vxlan_sock** %5, align 8
  br label %133

71:                                               ; preds = %52
  %72 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %73 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.sock*, %struct.sock** %75, align 8
  store %struct.sock* %76, %struct.sock** %12, align 8
  %77 = load %struct.sock*, %struct.sock** %12, align 8
  %78 = load %struct.net*, %struct.net** %6, align 8
  %79 = call i32 @sk_change_net(%struct.sock* %77, %struct.net* %78)
  %80 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %81 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %80, i32 0, i32 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %84 = call i32 @kernel_bind(%struct.TYPE_8__* %82, %struct.sockaddr* %83, i32 12)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_6__* %88, i32 %91, i32 %92)
  %94 = load %struct.sock*, %struct.sock** %12, align 8
  %95 = call i32 @sk_release_kernel(%struct.sock* %94)
  %96 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %97 = call i32 @kfree(%struct.vxlan_sock* %96)
  %98 = load i32, i32* %14, align 4
  %99 = call %struct.vxlan_sock* @ERR_PTR(i32 %98)
  store %struct.vxlan_sock* %99, %struct.vxlan_sock** %5, align 8
  br label %133

100:                                              ; preds = %71
  %101 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %102 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %101, i32 0, i32 3
  %103 = call i32 @atomic_set(i32* %102, i32 1)
  %104 = load i32*, i32** %8, align 8
  %105 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %106 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %109 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.sock*, %struct.sock** %12, align 8
  %111 = call %struct.TYPE_9__* @inet_sk(%struct.sock* %110)
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.vxlan_net*, %struct.vxlan_net** %10, align 8
  %114 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %113, i32 0, i32 0
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  %117 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %116, i32 0, i32 0
  %118 = load %struct.net*, %struct.net** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @vs_head(%struct.net* %118, i32 %119)
  %121 = call i32 @hlist_add_head_rcu(i32* %117, i32 %120)
  %122 = load %struct.vxlan_net*, %struct.vxlan_net** %10, align 8
  %123 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load %struct.sock*, %struct.sock** %12, align 8
  %126 = call %struct.TYPE_7__* @udp_sk(%struct.sock* %125)
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  %128 = load i32, i32* @vxlan_udp_encap_recv, align 4
  %129 = load %struct.sock*, %struct.sock** %12, align 8
  %130 = call %struct.TYPE_7__* @udp_sk(%struct.sock* %129)
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %128, i32* %131, align 4
  %132 = load %struct.vxlan_sock*, %struct.vxlan_sock** %11, align 8
  store %struct.vxlan_sock* %132, %struct.vxlan_sock** %5, align 8
  br label %133

133:                                              ; preds = %100, %87, %65, %31
  %134 = load %struct.vxlan_sock*, %struct.vxlan_sock** %5, align 8
  ret %struct.vxlan_sock* %134
}

declare dso_local %struct.vxlan_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.vxlan_sock* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.vxlan_sock* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @kfree(%struct.vxlan_sock*) #1

declare dso_local i32 @sk_change_net(%struct.sock*, %struct.net*) #1

declare dso_local i32 @kernel_bind(%struct.TYPE_8__*, %struct.sockaddr*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sk_release_kernel(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32) #1

declare dso_local i32 @vs_head(%struct.net*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_7__* @udp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
