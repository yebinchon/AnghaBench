; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_flush_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pppoe.c_pppoe_flush_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pppoe_net = type { i32, %struct.pppox_sock** }
%struct.pppox_sock = type { %struct.net_device*, %struct.pppox_sock* }
%struct.sock = type { i32, i32 (%struct.sock*)* }

@PPPOE_HASH_SIZE = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@PPPOX_BOUND = common dso_local global i32 0, align 4
@PPPOX_ZOMBIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pppoe_flush_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppoe_flush_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pppoe_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pppox_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = icmp eq %struct.net_device* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @dev_net(%struct.net_device* %11)
  %13 = call %struct.pppoe_net* @pppoe_pernet(i32 %12)
  store %struct.pppoe_net* %13, %struct.pppoe_net** %3, align 8
  %14 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %15 = icmp ne %struct.pppoe_net* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %19 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %18, i32 0, i32 0
  %20 = call i32 @write_lock_bh(i32* %19)
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %117, %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PPPOE_HASH_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %120

25:                                               ; preds = %21
  %26 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %27 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %26, i32 0, i32 1
  %28 = load %struct.pppox_sock**, %struct.pppox_sock*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %28, i64 %30
  %32 = load %struct.pppox_sock*, %struct.pppox_sock** %31, align 8
  store %struct.pppox_sock* %32, %struct.pppox_sock** %5, align 8
  br label %33

33:                                               ; preds = %95, %25
  %34 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %35 = icmp ne %struct.pppox_sock* %34, null
  br i1 %35, label %36, label %116

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %48, %36
  %38 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %39 = icmp ne %struct.pppox_sock* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %42 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %41, i32 0, i32 0
  %43 = load %struct.net_device*, %struct.net_device** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = icmp ne %struct.net_device* %43, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %50 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %49, i32 0, i32 1
  %51 = load %struct.pppox_sock*, %struct.pppox_sock** %50, align 8
  store %struct.pppox_sock* %51, %struct.pppox_sock** %5, align 8
  br label %37

52:                                               ; preds = %46
  %53 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %54 = icmp ne %struct.pppox_sock* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  br label %116

56:                                               ; preds = %52
  %57 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %58 = call %struct.sock* @sk_pppox(%struct.pppox_sock* %57)
  store %struct.sock* %58, %struct.sock** %6, align 8
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = call i32 @sock_hold(%struct.sock* %59)
  %61 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %62 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %61, i32 0, i32 0
  %63 = call i32 @write_unlock_bh(i32* %62)
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = call i32 @lock_sock(%struct.sock* %64)
  %66 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %67 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %66, i32 0, i32 0
  %68 = load %struct.net_device*, %struct.net_device** %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = icmp eq %struct.net_device* %68, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %56
  %72 = load %struct.sock*, %struct.sock** %6, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @PPPOX_CONNECTED, align 4
  %76 = load i32, i32* @PPPOX_BOUND, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %71
  %81 = load %struct.sock*, %struct.sock** %6, align 8
  %82 = call i32 @pppox_unbind_sock(%struct.sock* %81)
  %83 = load i32, i32* @PPPOX_ZOMBIE, align 4
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = getelementptr inbounds %struct.sock, %struct.sock* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 1
  %88 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %87, align 8
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = call i32 %88(%struct.sock* %89)
  %91 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %92 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %91, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @dev_put(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %80, %71, %56
  %96 = load %struct.sock*, %struct.sock** %6, align 8
  %97 = call i32 @release_sock(%struct.sock* %96)
  %98 = load %struct.sock*, %struct.sock** %6, align 8
  %99 = call i32 @sock_put(%struct.sock* %98)
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = call i32 @dev_net(%struct.net_device* %100)
  %102 = call %struct.pppoe_net* @pppoe_pernet(i32 %101)
  %103 = icmp eq %struct.pppoe_net* %102, null
  %104 = zext i1 %103 to i32
  %105 = call i32 @BUG_ON(i32 %104)
  %106 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %107 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %106, i32 0, i32 0
  %108 = call i32 @write_lock_bh(i32* %107)
  %109 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %110 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %109, i32 0, i32 1
  %111 = load %struct.pppox_sock**, %struct.pppox_sock*** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %111, i64 %113
  %115 = load %struct.pppox_sock*, %struct.pppox_sock** %114, align 8
  store %struct.pppox_sock* %115, %struct.pppox_sock** %5, align 8
  br label %33

116:                                              ; preds = %55, %33
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %21

120:                                              ; preds = %21
  %121 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %122 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %121, i32 0, i32 0
  %123 = call i32 @write_unlock_bh(i32* %122)
  br label %124

124:                                              ; preds = %120, %16
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.sock* @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
