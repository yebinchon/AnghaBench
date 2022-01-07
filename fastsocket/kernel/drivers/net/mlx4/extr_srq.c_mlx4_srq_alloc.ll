; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_srq.c_mlx4_srq_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_srq.c_mlx4_srq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mtt = type { i64 }
%struct.mlx4_srq = type { i32, i32, i32, i64, i32 }
%struct.mlx4_srq_table = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_srq_context* }
%struct.mlx4_srq_context = type { i32, i32, i8*, i8*, i64, i8*, i32, i64, i8* }
%struct.TYPE_2__ = type { %struct.mlx4_srq_table }

@MLX4_ICM_PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_srq_alloc(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, %struct.mlx4_mtt* %4, i32 %5, %struct.mlx4_srq* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlx4_mtt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mlx4_srq*, align 8
  %16 = alloca %struct.mlx4_srq_table*, align 8
  %17 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %18 = alloca %struct.mlx4_srq_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.mlx4_mtt* %4, %struct.mlx4_mtt** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.mlx4_srq* %6, %struct.mlx4_srq** %15, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %22 = call %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.mlx4_srq_table* %23, %struct.mlx4_srq_table** %16, align 8
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %25 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %26 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %25, i32 0, i32 0
  %27 = call i32 @mlx4_srq_alloc_icm(%struct.mlx4_dev* %24, i32* %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %20, align 4
  store i32 %31, i32* %8, align 4
  br label %156

32:                                               ; preds = %7
  %33 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %34 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_irq(i32* %34)
  %36 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %37 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %36, i32 0, i32 1
  %38 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %39 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %42 = call i32 @radix_tree_insert(i32* %37, i32 %40, %struct.mlx4_srq* %41)
  store i32 %42, i32* %20, align 4
  %43 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %44 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load i32, i32* %20, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %149

49:                                               ; preds = %32
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %51 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %50)
  store %struct.mlx4_cmd_mailbox* %51, %struct.mlx4_cmd_mailbox** %17, align 8
  %52 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %53 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %57 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %56)
  store i32 %57, i32* %20, align 4
  br label %136

58:                                               ; preds = %49
  %59 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %60 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %59, i32 0, i32 0
  %61 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %60, align 8
  store %struct.mlx4_srq_context* %61, %struct.mlx4_srq_context** %18, align 8
  %62 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %63 = call i32 @memset(%struct.mlx4_srq_context* %62, i32 0, i32 64)
  %64 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %65 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ilog2(i32 %66)
  %68 = shl i32 %67, 24
  %69 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %70 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %68, %71
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %75 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %74, i32 0, i32 8
  store i8* %73, i8** %75, align 8
  %76 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %77 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 4
  %80 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %81 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %80, i32 0, i32 7
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @cpu_to_be16(i32 %82)
  %84 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %85 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, 16777215
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %90 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %13, align 8
  %92 = getelementptr inbounds %struct.mlx4_mtt, %struct.mlx4_mtt* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MLX4_ICM_PAGE_SHIFT, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %97 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %96, i32 0, i32 4
  store i64 %95, i64* %97, align 8
  %98 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %99 = load %struct.mlx4_mtt*, %struct.mlx4_mtt** %13, align 8
  %100 = call i32 @mlx4_mtt_addr(%struct.mlx4_dev* %98, %struct.mlx4_mtt* %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = ashr i32 %101, 32
  %103 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %104 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i8* @cpu_to_be32(i32 %105)
  %107 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %108 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %112 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @cpu_to_be64(i32 %113)
  %115 = load %struct.mlx4_srq_context*, %struct.mlx4_srq_context** %18, align 8
  %116 = getelementptr inbounds %struct.mlx4_srq_context, %struct.mlx4_srq_context* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %118 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %119 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %120 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @mlx4_SW2HW_SRQ(%struct.mlx4_dev* %117, %struct.mlx4_cmd_mailbox* %118, i32 %121)
  store i32 %122, i32* %20, align 4
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %124 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %17, align 8
  %125 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %123, %struct.mlx4_cmd_mailbox* %124)
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %58
  br label %136

129:                                              ; preds = %58
  %130 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %131 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %130, i32 0, i32 2
  %132 = call i32 @atomic_set(i32* %131, i32 1)
  %133 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %134 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %133, i32 0, i32 1
  %135 = call i32 @init_completion(i32* %134)
  store i32 0, i32* %8, align 4
  br label %156

136:                                              ; preds = %128, %55
  %137 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %138 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %137, i32 0, i32 0
  %139 = call i32 @spin_lock_irq(i32* %138)
  %140 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %141 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %140, i32 0, i32 1
  %142 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %143 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @radix_tree_delete(i32* %141, i32 %144)
  %146 = load %struct.mlx4_srq_table*, %struct.mlx4_srq_table** %16, align 8
  %147 = getelementptr inbounds %struct.mlx4_srq_table, %struct.mlx4_srq_table* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_irq(i32* %147)
  br label %149

149:                                              ; preds = %136, %48
  %150 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %151 = load %struct.mlx4_srq*, %struct.mlx4_srq** %15, align 8
  %152 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mlx4_srq_free_icm(%struct.mlx4_dev* %150, i32 %153)
  %155 = load i32, i32* %20, align 4
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %149, %129, %30
  %157 = load i32, i32* %8, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_2__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_srq_alloc_icm(%struct.mlx4_dev*, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.mlx4_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memset(%struct.mlx4_srq_context*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mlx4_mtt_addr(%struct.mlx4_dev*, %struct.mlx4_mtt*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @mlx4_SW2HW_SRQ(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @mlx4_srq_free_icm(%struct.mlx4_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
