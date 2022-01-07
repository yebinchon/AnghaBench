; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_new_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_netiucv.c_netiucv_new_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { i8*, i8*, i32, i32, i32, i32, i32, %struct.net_device*, i32, i32, i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NETIUCV_BUFSIZE_DEFAULT = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"netiucvconn\00", align 1
@conn_state_names = common dso_local global i32 0, align 4
@conn_event_names = common dso_local global i32 0, align 4
@NR_CONN_STATES = common dso_local global i32 0, align 4
@NR_CONN_EVENTS = common dso_local global i32 0, align 4
@conn_fsm = common dso_local global i32 0, align 4
@CONN_FSM_LEN = common dso_local global i32 0, align 4
@CONN_STATE_INVALID = common dso_local global i32 0, align 4
@CONN_STATE_STOPPED = common dso_local global i32 0, align 4
@iucv_connection_rwlock = common dso_local global i32 0, align 4
@iucv_connection_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iucv_connection* (%struct.net_device*, i8*)* @netiucv_new_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iucv_connection* @netiucv_new_connection(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.iucv_connection*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iucv_connection*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.iucv_connection* @kzalloc(i32 64, i32 %7)
  store %struct.iucv_connection* %8, %struct.iucv_connection** %6, align 8
  %9 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %10 = icmp ne %struct.iucv_connection* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %118

12:                                               ; preds = %2
  %13 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %14 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %13, i32 0, i32 10
  %15 = call i32 @skb_queue_head_init(i32* %14)
  %16 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %17 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %16, i32 0, i32 9
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %20 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load i32, i32* @NETIUCV_BUFSIZE_DEFAULT, align 4
  %23 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %24 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %27 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %26, i32 0, i32 7
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %29 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* @GFP_DMA, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @alloc_skb(i32 %30, i32 %33)
  %35 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %36 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %38 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %12
  br label %115

42:                                               ; preds = %12
  %43 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %44 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i32, i32* @GFP_DMA, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @alloc_skb(i32 %45, i32 %48)
  %50 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %51 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %53 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %42
  br label %110

57:                                               ; preds = %42
  %58 = load i32, i32* @conn_state_names, align 4
  %59 = load i32, i32* @conn_event_names, align 4
  %60 = load i32, i32* @NR_CONN_STATES, align 4
  %61 = load i32, i32* @NR_CONN_EVENTS, align 4
  %62 = load i32, i32* @conn_fsm, align 4
  %63 = load i32, i32* @CONN_FSM_LEN, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @init_fsm(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %67 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %69 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %57
  br label %105

73:                                               ; preds = %57
  %74 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %75 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %78 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %77, i32 0, i32 5
  %79 = call i32 @fsm_settimer(i32 %76, i32* %78)
  %80 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %81 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CONN_STATE_INVALID, align 4
  %84 = call i32 @fsm_newstate(i32 %82, i32 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %73
  %88 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %89 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @memcpy(i32 %90, i8* %91, i32 9)
  %93 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %94 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CONN_STATE_STOPPED, align 4
  %97 = call i32 @fsm_newstate(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %87, %73
  %99 = call i32 @write_lock_bh(i32* @iucv_connection_rwlock)
  %100 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %101 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %100, i32 0, i32 2
  %102 = call i32 @list_add_tail(i32* %101, i32* @iucv_connection_list)
  %103 = call i32 @write_unlock_bh(i32* @iucv_connection_rwlock)
  %104 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  store %struct.iucv_connection* %104, %struct.iucv_connection** %3, align 8
  br label %119

105:                                              ; preds = %72
  %106 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %107 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @kfree_skb(i8* %108)
  br label %110

110:                                              ; preds = %105, %56
  %111 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %112 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @kfree_skb(i8* %113)
  br label %115

115:                                              ; preds = %110, %41
  %116 = load %struct.iucv_connection*, %struct.iucv_connection** %6, align 8
  %117 = call i32 @kfree(%struct.iucv_connection* %116)
  br label %118

118:                                              ; preds = %115, %11
  store %struct.iucv_connection* null, %struct.iucv_connection** %3, align 8
  br label %119

119:                                              ; preds = %118, %98
  %120 = load %struct.iucv_connection*, %struct.iucv_connection** %3, align 8
  ret %struct.iucv_connection* %120
}

declare dso_local %struct.iucv_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @alloc_skb(i32, i32) #1

declare dso_local i32 @init_fsm(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fsm_settimer(i32, i32*) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @kfree_skb(i8*) #1

declare dso_local i32 @kfree(%struct.iucv_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
