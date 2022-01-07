; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_prepare_tunnel_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_prepare_tunnel_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32*, %struct.pppol2tp_tunnel*, i32 }
%struct.pppol2tp_tunnel = type { i64, %struct.sock*, i32, %struct.net*, i32, i32*, i32, %struct.TYPE_5__, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }
%struct.socket = type { %struct.TYPE_4__*, %struct.sock* }
%struct.TYPE_4__ = type { i32 }
%struct.pppol2tp_net = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@EBADF = common dso_local global i32 0, align 4
@PPPOL2TP_MSG_CONTROL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"tunl %hu: sockfd_lookup(fd=%d) returned %d\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"tunl %hu: fd %d wrong protocol, got %d, expected %d\0A\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"tunl %hu: fd %d wrong family, got %d, expected %d\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@L2TP_TUNNEL_MAGIC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"tunl %hu\00", align 1
@PPPOL2TP_DEFAULT_DEBUG_FLAGS = common dso_local global i32 0, align 4
@pppol2tp_tunnel_destruct = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@pppol2tp_tunnel_count = common dso_local global i32 0, align 4
@UDP_ENCAP_L2TPINUDP = common dso_local global i32 0, align 4
@pppol2tp_udp_encap_recv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, i32, i32, i32*)* @pppol2tp_prepare_tunnel_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @pppol2tp_prepare_tunnel_socket(%struct.net* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.pppol2tp_tunnel*, align 8
  %13 = alloca %struct.pppol2tp_net*, align 8
  %14 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store %struct.socket* null, %struct.socket** %10, align 8
  store %struct.sock* null, %struct.sock** %14, align 8
  %15 = load i32, i32* @EBADF, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.socket* @sockfd_lookup(i32 %17, i32* %9)
  store %struct.socket* %18, %struct.socket** %10, align 8
  %19 = load %struct.socket*, %struct.socket** %10, align 8
  %20 = icmp ne %struct.socket* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %23 = load i32, i32* @KERN_ERR, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i32, i32, i32, i8*, i32, i32, i32, ...) @PRINTK(i32 -1, i32 %22, i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  br label %179

28:                                               ; preds = %4
  %29 = load %struct.socket*, %struct.socket** %10, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  store %struct.sock* %31, %struct.sock** %11, align 8
  %32 = load i32, i32* @EPROTONOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sock*, %struct.sock** %11, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IPPROTO_UDP, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %41 = load i32, i32* @KERN_ERR, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.sock*, %struct.sock** %11, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @IPPROTO_UDP, align 4
  %48 = call i32 (i32, i32, i32, i8*, i32, i32, i32, ...) @PRINTK(i32 -1, i32 %40, i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %46, i32 %47)
  br label %179

49:                                               ; preds = %28
  %50 = load i32, i32* @EAFNOSUPPORT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  %52 = load %struct.socket*, %struct.socket** %10, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AF_INET, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %49
  %60 = load i32, i32* @PPPOL2TP_MSG_CONTROL, align 4
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.socket*, %struct.socket** %10, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AF_INET, align 4
  %70 = call i32 (i32, i32, i32, i8*, i32, i32, i32, ...) @PRINTK(i32 -1, i32 %60, i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63, i32 %68, i32 %69)
  br label %179

71:                                               ; preds = %49
  %72 = load i32, i32* @ENOTCONN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  %74 = load %struct.sock*, %struct.sock** %11, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 2
  %76 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %75, align 8
  store %struct.pppol2tp_tunnel* %76, %struct.pppol2tp_tunnel** %12, align 8
  %77 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %78 = icmp ne %struct.pppol2tp_tunnel* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %71
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  %82 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %83 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @L2TP_TUNNEL_MAGIC, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %90 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %89, i32 0, i32 1
  %91 = load %struct.sock*, %struct.sock** %90, align 8
  store %struct.sock* %91, %struct.sock** %14, align 8
  br label %171

92:                                               ; preds = %71
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.pppol2tp_tunnel* @kzalloc(i32 64, i32 %93)
  store %struct.pppol2tp_tunnel* %94, %struct.pppol2tp_tunnel** %12, align 8
  %95 = load %struct.sock*, %struct.sock** %11, align 8
  %96 = getelementptr inbounds %struct.sock, %struct.sock* %95, i32 0, i32 2
  store %struct.pppol2tp_tunnel* %94, %struct.pppol2tp_tunnel** %96, align 8
  %97 = load %struct.sock*, %struct.sock** %11, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 2
  %99 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %98, align 8
  %100 = icmp eq %struct.pppol2tp_tunnel* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %179

104:                                              ; preds = %92
  %105 = load i64, i64* @L2TP_TUNNEL_MAGIC, align 8
  %106 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %107 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %109 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @sprintf(i32* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %116 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* @PPPOL2TP_DEFAULT_DEBUG_FLAGS, align 4
  %119 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %120 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.sock*, %struct.sock** %11, align 8
  %122 = getelementptr inbounds %struct.sock, %struct.sock* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %125 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %124, i32 0, i32 5
  store i32* %123, i32** %125, align 8
  %126 = load %struct.sock*, %struct.sock** %11, align 8
  %127 = getelementptr inbounds %struct.sock, %struct.sock* %126, i32 0, i32 1
  store i32* @pppol2tp_tunnel_destruct, i32** %127, align 8
  %128 = load %struct.sock*, %struct.sock** %11, align 8
  %129 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %130 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %129, i32 0, i32 1
  store %struct.sock* %128, %struct.sock** %130, align 8
  %131 = load i32, i32* @GFP_ATOMIC, align 4
  %132 = load %struct.sock*, %struct.sock** %11, align 8
  %133 = getelementptr inbounds %struct.sock, %struct.sock* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %135 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %134, i32 0, i32 4
  %136 = call i32 @rwlock_init(i32* %135)
  %137 = load %struct.net*, %struct.net** %5, align 8
  %138 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %139 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %138, i32 0, i32 3
  store %struct.net* %137, %struct.net** %139, align 8
  %140 = load %struct.net*, %struct.net** %5, align 8
  %141 = call %struct.pppol2tp_net* @pppol2tp_pernet(%struct.net* %140)
  store %struct.pppol2tp_net* %141, %struct.pppol2tp_net** %13, align 8
  %142 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %143 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %142, i32 0, i32 2
  %144 = call i32 @INIT_LIST_HEAD(i32* %143)
  %145 = load %struct.pppol2tp_net*, %struct.pppol2tp_net** %13, align 8
  %146 = getelementptr inbounds %struct.pppol2tp_net, %struct.pppol2tp_net* %145, i32 0, i32 0
  %147 = call i32 @write_lock_bh(i32* %146)
  %148 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %149 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %148, i32 0, i32 2
  %150 = load %struct.pppol2tp_net*, %struct.pppol2tp_net** %13, align 8
  %151 = getelementptr inbounds %struct.pppol2tp_net, %struct.pppol2tp_net* %150, i32 0, i32 1
  %152 = call i32 @list_add(i32* %149, i32* %151)
  %153 = load %struct.pppol2tp_net*, %struct.pppol2tp_net** %13, align 8
  %154 = getelementptr inbounds %struct.pppol2tp_net, %struct.pppol2tp_net* %153, i32 0, i32 0
  %155 = call i32 @write_unlock_bh(i32* %154)
  %156 = call i32 @atomic_inc(i32* @pppol2tp_tunnel_count)
  %157 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %158 = call i32 @pppol2tp_tunnel_inc_refcount(%struct.pppol2tp_tunnel* %157)
  %159 = load i32, i32* @UDP_ENCAP_L2TPINUDP, align 4
  %160 = load %struct.sock*, %struct.sock** %11, align 8
  %161 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %160)
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* @pppol2tp_udp_encap_recv, align 4
  %164 = load %struct.sock*, %struct.sock** %11, align 8
  %165 = call %struct.TYPE_6__* @udp_sk(%struct.sock* %164)
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  %167 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %12, align 8
  %168 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %167, i32 0, i32 1
  %169 = load %struct.sock*, %struct.sock** %168, align 8
  store %struct.sock* %169, %struct.sock** %14, align 8
  %170 = load i32*, i32** %8, align 8
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %179, %104, %79
  %172 = load %struct.socket*, %struct.socket** %10, align 8
  %173 = icmp ne %struct.socket* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load %struct.socket*, %struct.socket** %10, align 8
  %176 = call i32 @sockfd_put(%struct.socket* %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load %struct.sock*, %struct.sock** %14, align 8
  ret %struct.sock* %178

179:                                              ; preds = %101, %59, %39, %21
  %180 = load i32, i32* %9, align 4
  %181 = load i32*, i32** %8, align 8
  store i32 %180, i32* %181, align 4
  br label %171
}

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #1

declare dso_local i32 @PRINTK(i32, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.pppol2tp_tunnel* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local %struct.pppol2tp_net* @pppol2tp_pernet(%struct.net*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pppol2tp_tunnel_inc_refcount(%struct.pppol2tp_tunnel*) #1

declare dso_local %struct.TYPE_6__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @sockfd_put(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
