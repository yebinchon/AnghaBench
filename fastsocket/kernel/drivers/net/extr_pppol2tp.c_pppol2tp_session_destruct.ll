; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_session_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppol2tp.c_pppol2tp_session_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.pppol2tp_session* }
%struct.pppol2tp_session = type { i64, i32*, %struct.pppol2tp_tunnel*, i32, %struct.TYPE_2__ }
%struct.pppol2tp_tunnel = type { i64, i32 }
%struct.TYPE_2__ = type { i64 }

@L2TP_SESSION_MAGIC = common dso_local global i64 0, align 8
@L2TP_TUNNEL_MAGIC = common dso_local global i64 0, align 8
@pppol2tp_session_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @pppol2tp_session_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppol2tp_session_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.pppol2tp_session*, align 8
  %4 = alloca %struct.pppol2tp_tunnel*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  store %struct.pppol2tp_session* null, %struct.pppol2tp_session** %3, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 0
  %7 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %6, align 8
  %8 = icmp ne %struct.pppol2tp_session* %7, null
  br i1 %8, label %9, label %61

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 0
  %12 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %11, align 8
  store %struct.pppol2tp_session* %12, %struct.pppol2tp_session** %3, align 8
  %13 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %14 = icmp eq %struct.pppol2tp_session* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %64

16:                                               ; preds = %9
  %17 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %18 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @L2TP_SESSION_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %25 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %24, i32 0, i32 2
  %26 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %25, align 8
  store %struct.pppol2tp_tunnel* %26, %struct.pppol2tp_tunnel** %4, align 8
  %27 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %28 = icmp ne %struct.pppol2tp_tunnel* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %16
  %30 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %31 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @L2TP_TUNNEL_MAGIC, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %38 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %29
  %43 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %44 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %43, i32 0, i32 1
  %45 = call i32 @write_lock_bh(i32* %44)
  %46 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %47 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %46, i32 0, i32 3
  %48 = call i32 @hlist_del_init(i32* %47)
  %49 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %50 = getelementptr inbounds %struct.pppol2tp_tunnel, %struct.pppol2tp_tunnel* %49, i32 0, i32 1
  %51 = call i32 @write_unlock_bh(i32* %50)
  %52 = call i32 @atomic_dec(i32* @pppol2tp_session_count)
  br label %53

53:                                               ; preds = %42, %29
  %54 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %55 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %54, i32 0, i32 2
  store %struct.pppol2tp_tunnel* null, %struct.pppol2tp_tunnel** %55, align 8
  %56 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %57 = getelementptr inbounds %struct.pppol2tp_session, %struct.pppol2tp_session* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.pppol2tp_tunnel*, %struct.pppol2tp_tunnel** %4, align 8
  %59 = call i32 @pppol2tp_tunnel_dec_refcount(%struct.pppol2tp_tunnel* %58)
  br label %60

60:                                               ; preds = %53, %16
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.pppol2tp_session*, %struct.pppol2tp_session** %3, align 8
  %63 = call i32 @kfree(%struct.pppol2tp_session* %62)
  br label %64

64:                                               ; preds = %61, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pppol2tp_tunnel_dec_refcount(%struct.pppol2tp_tunnel*) #1

declare dso_local i32 @kfree(%struct.pppol2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
