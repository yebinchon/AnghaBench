; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_l2t_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_l2t.c_l2t_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.l2t_entry = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [77 x i8] c" Idx IP address                Ethernet address  VLAN/P LP State Users Port\0A\00", align 1
@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%4u %-25s %17pM %4d %u %2u   %c   %5u %s\0A\00", align 1
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @l2t_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2t_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [60 x i8], align 16
  %6 = alloca %struct.l2t_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @seq_puts(%struct.seq_file* %11, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %81

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.l2t_entry*
  store %struct.l2t_entry* %15, %struct.l2t_entry** %6, align 8
  %16 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %17 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %16, i32 0, i32 2
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %20 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %25, align 16
  br label %38

26:                                               ; preds = %13
  %27 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %28 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %29 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %34 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %35 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sprintf(i8* %27, i8* %33, i32 %36)
  br label %38

38:                                               ; preds = %26, %24
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %41 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %45 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %48 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VLAN_VID_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %53 = call i32 @vlan_prio(%struct.l2t_entry* %52)
  %54 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %55 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %58 = call i32 @l2e_state(%struct.l2t_entry* %57)
  %59 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %60 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %59, i32 0, i32 4
  %61 = call i32 @atomic_read(i32* %60)
  %62 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %63 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %38
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %68 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  br label %75

74:                                               ; preds = %38
  br label %75

75:                                               ; preds = %74, %66
  %76 = phi i8* [ %73, %66 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %74 ]
  %77 = call i32 @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %43, i32 %46, i32 %51, i32 %53, i32 %56, i32 %58, i32 %61, i8* %76)
  %78 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %79 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %78, i32 0, i32 2
  %80 = call i32 @spin_unlock_bh(i32* %79)
  br label %81

81:                                               ; preds = %75, %10
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vlan_prio(%struct.l2t_entry*) #1

declare dso_local i32 @l2e_state(%struct.l2t_entry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
