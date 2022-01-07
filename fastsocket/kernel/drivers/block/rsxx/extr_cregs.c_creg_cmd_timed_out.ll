; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_cregs.c_creg_cmd_timed_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_cregs.c_creg_cmd_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__, %struct.creg_cmd* }
%struct.TYPE_3__ = type { i32 }
%struct.creg_cmd = type { i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)* }

@.str = private unnamed_addr constant [44 x i8] c"No active command associated with timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@creg_cmd_pool = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @creg_cmd_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @creg_cmd_timed_out(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca %struct.creg_cmd*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.rsxx_cardinfo*
  store %struct.rsxx_cardinfo* %6, %struct.rsxx_cardinfo** %3, align 8
  %7 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %8 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %12 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load %struct.creg_cmd*, %struct.creg_cmd** %13, align 8
  store %struct.creg_cmd* %14, %struct.creg_cmd** %4, align 8
  %15 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %16 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store %struct.creg_cmd* null, %struct.creg_cmd** %17, align 8
  %18 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %19 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %23 = icmp eq %struct.creg_cmd* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %26 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %32 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %31)
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %65

34:                                               ; preds = %1
  %35 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %35, i32 0, i32 0
  %37 = load i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)*, i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.creg_cmd, %struct.creg_cmd* %40, i32 0, i32 0
  %42 = load i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)*, i32 (%struct.rsxx_cardinfo*, %struct.creg_cmd*, i32)** %41, align 8
  %43 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %44 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 %42(%struct.rsxx_cardinfo* %43, %struct.creg_cmd* %44, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  %49 = load i32, i32* @creg_cmd_pool, align 4
  %50 = load %struct.creg_cmd*, %struct.creg_cmd** %4, align 8
  %51 = call i32 @kmem_cache_free(i32 %49, %struct.creg_cmd* %50)
  %52 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %53 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %57 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %60 = call i32 @creg_kick_queue(%struct.rsxx_cardinfo* %59)
  %61 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %62 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  br label %65

65:                                               ; preds = %48, %24
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.creg_cmd*) #1

declare dso_local i32 @creg_kick_queue(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
