; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_do_l2t_write_rpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_do_l2t_write_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.l2t_entry* }
%struct.l2t_entry = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cpl_l2t_write_rpl = type { i64 }

@L2T_SIZE = common dso_local global i32 0, align 4
@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unexpected L2T_WRITE_RPL status %u for entry %u\0A\00", align 1
@F_SYNC_WR = common dso_local global i32 0, align 4
@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@NUD_STALE = common dso_local global i32 0, align 4
@L2T_STATE_STALE = common dso_local global i64 0, align 8
@L2T_STATE_VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_l2t_write_rpl(%struct.adapter* %0, %struct.cpl_l2t_write_rpl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cpl_l2t_write_rpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2t_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cpl_l2t_write_rpl* %1, %struct.cpl_l2t_write_rpl** %4, align 8
  %8 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %4, align 8
  %9 = call i32 @GET_TID(%struct.cpl_l2t_write_rpl* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @L2T_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %4, align 8
  %15 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CPL_ERR_NONE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %4, align 8
  %27 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %29)
  br label %77

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @F_SYNC_WR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %31
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.l2t_entry*, %struct.l2t_entry** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %41, i64 %43
  store %struct.l2t_entry* %44, %struct.l2t_entry** %7, align 8
  %45 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %46 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %45, i32 0, i32 1
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %49 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %36
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %56 = call i32 @send_pending(%struct.adapter* %54, %struct.l2t_entry* %55)
  %57 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %58 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NUD_STALE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i64, i64* @L2T_STATE_STALE, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load i64, i64* @L2T_STATE_VALID, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %72 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %36
  %74 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %75 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %22, %73, %31
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_l2t_write_rpl*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @send_pending(%struct.adapter*, %struct.l2t_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
