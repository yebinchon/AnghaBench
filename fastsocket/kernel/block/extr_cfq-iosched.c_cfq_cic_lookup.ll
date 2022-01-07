; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_cic_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_cic_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_io_context = type { %struct.cfq_data* }
%struct.cfq_data = type { i32 }
%struct.io_context = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfq_io_context* (%struct.cfq_data*, %struct.io_context*)* @cfq_cic_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfq_io_context* @cfq_cic_lookup(%struct.cfq_data* %0, %struct.io_context* %1) #0 {
  %3 = alloca %struct.cfq_io_context*, align 8
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.io_context*, align 8
  %6 = alloca %struct.cfq_io_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.io_context* %1, %struct.io_context** %5, align 8
  %9 = load %struct.io_context*, %struct.io_context** %5, align 8
  %10 = icmp ne %struct.io_context* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.cfq_io_context* null, %struct.cfq_io_context** %3, align 8
  br label %78

16:                                               ; preds = %2
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.io_context*, %struct.io_context** %5, align 8
  %19 = getelementptr inbounds %struct.io_context, %struct.io_context* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.cfq_io_context* @rcu_dereference(i32 %20)
  store %struct.cfq_io_context* %21, %struct.cfq_io_context** %6, align 8
  %22 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %23 = icmp ne %struct.cfq_io_context* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %26 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %25, i32 0, i32 0
  %27 = load %struct.cfq_data*, %struct.cfq_data** %26, align 8
  %28 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %29 = icmp eq %struct.cfq_data* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  store %struct.cfq_io_context* %32, %struct.cfq_io_context** %3, align 8
  br label %78

33:                                               ; preds = %24, %16
  br label %34

34:                                               ; preds = %75, %33
  %35 = load %struct.io_context*, %struct.io_context** %5, align 8
  %36 = getelementptr inbounds %struct.io_context, %struct.io_context* %35, i32 0, i32 2
  %37 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %38 = ptrtoint %struct.cfq_data* %37 to i64
  %39 = call %struct.cfq_io_context* @radix_tree_lookup(i32* %36, i64 %38)
  store %struct.cfq_io_context* %39, %struct.cfq_io_context** %6, align 8
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %42 = icmp ne %struct.cfq_io_context* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  br label %76

44:                                               ; preds = %34
  %45 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %46 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %45, i32 0, i32 0
  %47 = load %struct.cfq_data*, %struct.cfq_data** %46, align 8
  %48 = bitcast %struct.cfq_data* %47 to i8*
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %57 = load %struct.io_context*, %struct.io_context** %5, align 8
  %58 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %59 = call i32 @cfq_drop_dead_cic(%struct.cfq_data* %56, %struct.io_context* %57, %struct.cfq_io_context* %58)
  %60 = call i32 (...) @rcu_read_lock()
  br label %75

61:                                               ; preds = %44
  %62 = load %struct.io_context*, %struct.io_context** %5, align 8
  %63 = getelementptr inbounds %struct.io_context, %struct.io_context* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.io_context*, %struct.io_context** %5, align 8
  %67 = getelementptr inbounds %struct.io_context, %struct.io_context* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %70 = call i32 @rcu_assign_pointer(i32 %68, %struct.cfq_io_context* %69)
  %71 = load %struct.io_context*, %struct.io_context** %5, align 8
  %72 = getelementptr inbounds %struct.io_context, %struct.io_context* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %76

75:                                               ; preds = %55
  br i1 true, label %34, label %76

76:                                               ; preds = %75, %61, %43
  %77 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  store %struct.cfq_io_context* %77, %struct.cfq_io_context** %3, align 8
  br label %78

78:                                               ; preds = %76, %30, %15
  %79 = load %struct.cfq_io_context*, %struct.cfq_io_context** %3, align 8
  ret %struct.cfq_io_context* %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfq_io_context* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.cfq_io_context* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @cfq_drop_dead_cic(%struct.cfq_data*, %struct.io_context*, %struct.cfq_io_context*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cfq_io_context*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
