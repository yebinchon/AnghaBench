; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_alloc_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_keys.c_qib_alloc_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_mregion = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qib_ibdev = type { i32*, %struct.qib_lkey_table }
%struct.qib_lkey_table = type { i64, i32, i32, i32, i32** }

@ib_qib_lkey_table_size = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_alloc_lkey(%struct.qib_mregion* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_mregion*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_ibdev*, align 8
  %10 = alloca %struct.qib_lkey_table*, align 8
  %11 = alloca %struct.qib_mregion*, align 8
  store %struct.qib_mregion* %0, %struct.qib_mregion** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %13 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.qib_ibdev* @to_idev(i32 %16)
  store %struct.qib_ibdev* %17, %struct.qib_ibdev** %9, align 8
  %18 = load %struct.qib_ibdev*, %struct.qib_ibdev** %9, align 8
  %19 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %18, i32 0, i32 1
  store %struct.qib_lkey_table* %19, %struct.qib_lkey_table** %10, align 8
  %20 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %21 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %20, i32 0, i32 3
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.qib_ibdev*, %struct.qib_ibdev** %9, align 8
  %28 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call %struct.qib_mregion* @rcu_dereference(i32* %29)
  store %struct.qib_mregion* %30, %struct.qib_mregion** %11, align 8
  %31 = load %struct.qib_mregion*, %struct.qib_mregion** %11, align 8
  %32 = icmp ne %struct.qib_mregion* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %35 = call i32 @qib_get_mr(%struct.qib_mregion* %34)
  %36 = load %struct.qib_ibdev*, %struct.qib_ibdev** %9, align 8
  %37 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %40 = call i32 @rcu_assign_pointer(i32* %38, %struct.qib_mregion* %39)
  %41 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %42 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %33, %26
  br label %131

44:                                               ; preds = %2
  %45 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %46 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %71, %44
  %50 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %51 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %50, i32 0, i32 4
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %72

58:                                               ; preds = %49
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  %61 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %62 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %60, %65
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %138

71:                                               ; preds = %58
  br label %49

72:                                               ; preds = %57
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  %75 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %76 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = and i64 %74, %79
  %81 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %82 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %84 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @ib_qib_lkey_table_size, align 4
  %89 = sub nsw i32 32, %88
  %90 = zext i32 %89 to i64
  %91 = shl i64 %87, %90
  %92 = load i32, i32* @ib_qib_lkey_table_size, align 4
  %93 = sub nsw i32 24, %92
  %94 = shl i32 1, %93
  %95 = sub nsw i32 %94, 1
  %96 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %97 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %95, %98
  %100 = shl i32 %99, 8
  %101 = sext i32 %100 to i64
  %102 = or i64 %91, %101
  %103 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %104 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %106 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %72
  %110 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %111 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %112, 256
  store i64 %113, i64* %111, align 8
  %114 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %115 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %109, %72
  %119 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %120 = call i32 @qib_get_mr(%struct.qib_mregion* %119)
  %121 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %122 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %121, i32 0, i32 4
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* %6, align 8
  %125 = getelementptr inbounds i32*, i32** %123, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %128 = call i32 @rcu_assign_pointer(i32* %126, %struct.qib_mregion* %127)
  %129 = load %struct.qib_mregion*, %struct.qib_mregion** %3, align 8
  %130 = getelementptr inbounds %struct.qib_mregion, %struct.qib_mregion* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %118, %43
  %132 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %133 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %132, i32 0, i32 3
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  br label %136

136:                                              ; preds = %138, %131
  %137 = load i32, i32* %8, align 4
  ret i32 %137

138:                                              ; preds = %70
  %139 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %10, align 8
  %140 = getelementptr inbounds %struct.qib_lkey_table, %struct.qib_lkey_table* %139, i32 0, i32 3
  %141 = load i64, i64* %5, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %136
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.qib_mregion* @rcu_dereference(i32*) #1

declare dso_local i32 @qib_get_mr(%struct.qib_mregion*) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.qib_mregion*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
