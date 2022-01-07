; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_handle_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_handle_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_lpar_connection = type { i32, i32, i32, i64 }
%struct.veth_lpevent = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@veth_cnx = common dso_local global %struct.veth_lpar_connection** null, align 8
@VETH_MAX_ACKS_PER_MSG = common dso_local global i32 0, align 4
@VETH_NUMBUFFERS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unknown interrupt type %d from LPAR %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_lpevent*)* @veth_handle_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_handle_int(%struct.veth_lpevent* %0) #0 {
  %2 = alloca %struct.veth_lpevent*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.veth_lpar_connection*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.veth_lpevent* %0, %struct.veth_lpevent** %2, align 8
  %9 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %10 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.veth_lpar_connection**, %struct.veth_lpar_connection*** @veth_cnx, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %13, i64 %14
  %16 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %15, align 8
  store %struct.veth_lpar_connection* %16, %struct.veth_lpar_connection** %4, align 8
  store i32 0, i32* %7, align 4
  %17 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %18 = icmp ne %struct.veth_lpar_connection* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %23 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %89 [
    i32 131, label %26
    i32 128, label %30
    i32 129, label %31
    i32 130, label %85
  ]

26:                                               ; preds = %1
  %27 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %28 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %29 = call i32 @veth_take_cap(%struct.veth_lpar_connection* %27, %struct.veth_lpevent* %28)
  br label %96

30:                                               ; preds = %1
  br label %96

31:                                               ; preds = %1
  %32 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %33 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %68, %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @VETH_MAX_ACKS_PER_MSG, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %42 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @VETH_NUMBUFFERS, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %40
  %54 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %55 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %56 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @veth_recycle_msg(%struct.veth_lpar_connection* %54, i64 %59)
  %61 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %62 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %53, %40
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %36

71:                                               ; preds = %36
  %72 = load i32, i32* %7, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* @jiffies, align 4
  %76 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %77 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %79 = call i32 @veth_wake_queues(%struct.veth_lpar_connection* %78)
  br label %80

80:                                               ; preds = %74, %71
  %81 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %82 = getelementptr inbounds %struct.veth_lpar_connection, %struct.veth_lpar_connection* %81, i32 0, i32 0
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %96

85:                                               ; preds = %1
  %86 = load %struct.veth_lpar_connection*, %struct.veth_lpar_connection** %4, align 8
  %87 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %88 = call i32 @veth_receive(%struct.veth_lpar_connection* %86, %struct.veth_lpevent* %87)
  br label %96

89:                                               ; preds = %1
  %90 = load %struct.veth_lpevent*, %struct.veth_lpevent** %2, align 8
  %91 = getelementptr inbounds %struct.veth_lpevent, %struct.veth_lpevent* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @veth_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %93, i64 %94)
  br label %96

96:                                               ; preds = %89, %85, %80, %30, %26
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @veth_take_cap(%struct.veth_lpar_connection*, %struct.veth_lpevent*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @veth_recycle_msg(%struct.veth_lpar_connection*, i64) #1

declare dso_local i32 @veth_wake_queues(%struct.veth_lpar_connection*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @veth_receive(%struct.veth_lpar_connection*, %struct.veth_lpevent*) #1

declare dso_local i32 @veth_error(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
