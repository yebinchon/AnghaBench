; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, %struct.TYPE_2__*, %struct.fc_exch_pool* }
%struct.TYPE_2__ = type { i32 }
%struct.fc_exch_pool = type { i64, i32, i8*, i8*, i8* }

@fc_cpu_order = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*)* @fc_exch_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_delete(%struct.fc_exch* %0) #0 {
  %2 = alloca %struct.fc_exch*, align 8
  %3 = alloca %struct.fc_exch_pool*, align 8
  %4 = alloca i8*, align 8
  store %struct.fc_exch* %0, %struct.fc_exch** %2, align 8
  %5 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %6 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %5, i32 0, i32 3
  %7 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %6, align 8
  store %struct.fc_exch_pool* %7, %struct.fc_exch_pool** %3, align 8
  %8 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %9 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %8, i32 0, i32 1
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %12 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %18 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %22 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %25 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %23, %28
  %30 = load i32, i32* @fc_cpu_order, align 4
  %31 = ashr i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %4, align 8
  %34 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %35 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %34, i32 0, i32 4
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @FC_XID_UNKNOWN, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %42 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  br label %58

43:                                               ; preds = %1
  %44 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %45 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @FC_XID_UNKNOWN, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %52 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i8*, i8** %4, align 8
  %55 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %56 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @fc_exch_ptr_set(%struct.fc_exch_pool* %59, i8* %60, i32* null)
  %62 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %63 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %62, i32 0, i32 1
  %64 = call i32 @list_del(i32* %63)
  %65 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %3, align 8
  %66 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock_bh(i32* %66)
  %68 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %69 = call i32 @fc_exch_release(%struct.fc_exch* %68)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fc_exch_ptr_set(%struct.fc_exch_pool*, i8*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_release(%struct.fc_exch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
