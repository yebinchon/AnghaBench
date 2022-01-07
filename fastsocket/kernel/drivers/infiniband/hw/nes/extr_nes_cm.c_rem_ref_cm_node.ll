; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_rem_ref_cm_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_rem_ref_cm_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { i32, i32 }
%struct.nes_cm_node = type { %struct.nes_qp*, %struct.TYPE_9__*, i32, i64, %struct.TYPE_10__*, i64, i32, i64, i32, %struct.TYPE_6__*, i32, i32 }
%struct.nes_qp = type { i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NES_MANAGE_APBVT_DEL = common dso_local global i32 0, align 4
@cm_nodes_destroyed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_core*, %struct.nes_cm_node*)* @rem_ref_cm_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rem_ref_cm_node(%struct.nes_cm_core* %0, %struct.nes_cm_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nes_cm_core*, align 8
  %5 = alloca %struct.nes_cm_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nes_qp*, align 8
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %4, align 8
  store %struct.nes_cm_node* %1, %struct.nes_cm_node** %5, align 8
  %8 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %9 = icmp ne %struct.nes_cm_node* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %148

13:                                               ; preds = %2
  %14 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %15 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %14, i32 0, i32 9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %21 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %20, i32 0, i32 11
  %22 = call i64 @atomic_dec_return(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %26 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %25, i32 0, i32 9
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  store i32 0, i32* %3, align 4
  br label %148

31:                                               ; preds = %13
  %32 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %33 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %32, i32 0, i32 10
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %36 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %35, i32 0, i32 1
  %37 = call i32 @atomic_dec(i32* %36)
  %38 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %39 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %38, i32 0, i32 9
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %45 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %31
  %49 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %50 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %74

53:                                               ; preds = %48
  %54 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %55 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %54, i32 0, i32 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %62 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %61, i32 0, i32 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = call i32 @atomic_dec(i32* %64)
  %66 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %67 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %66, i32 0, i32 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = call i64 @atomic_read(i32* %69)
  %71 = icmp slt i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  br label %74

74:                                               ; preds = %53, %48, %31
  %75 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %76 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %80 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %85 = call i32 @handle_recv_entry(%struct.nes_cm_node* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %74
  %87 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %88 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %87, i32 0, i32 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %93 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %94 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %93, i32 0, i32 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = call i32 @mini_cm_dec_refcnt_listen(%struct.nes_cm_core* %92, %struct.TYPE_10__* %95, i32 0)
  br label %127

97:                                               ; preds = %86
  %98 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %99 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %97
  %103 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %104 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = icmp ne %struct.TYPE_9__* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %109 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %108, i32 0, i32 1
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %112 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %115 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @PCI_FUNC(i32 %122)
  %124 = load i32, i32* @NES_MANAGE_APBVT_DEL, align 4
  %125 = call i32 @nes_manage_apbvt(%struct.TYPE_9__* %110, i32 %113, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %107, %102, %97
  br label %127

127:                                              ; preds = %126, %91
  %128 = load %struct.nes_cm_core*, %struct.nes_cm_core** %4, align 8
  %129 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %128, i32 0, i32 0
  %130 = call i32 @atomic_dec(i32* %129)
  %131 = call i32 @atomic_inc(i32* @cm_nodes_destroyed)
  %132 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %133 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %132, i32 0, i32 0
  %134 = load %struct.nes_qp*, %struct.nes_qp** %133, align 8
  store %struct.nes_qp* %134, %struct.nes_qp** %7, align 8
  %135 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %136 = icmp ne %struct.nes_qp* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %127
  %138 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %139 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  %140 = load %struct.nes_qp*, %struct.nes_qp** %7, align 8
  %141 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %140, i32 0, i32 0
  %142 = call i32 @nes_rem_ref(i32* %141)
  %143 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %144 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %143, i32 0, i32 0
  store %struct.nes_qp* null, %struct.nes_qp** %144, align 8
  br label %145

145:                                              ; preds = %137, %127
  %146 = load %struct.nes_cm_node*, %struct.nes_cm_node** %5, align 8
  %147 = call i32 @kfree(%struct.nes_cm_node* %146)
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %145, %24, %10
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @handle_recv_entry(%struct.nes_cm_node*, i32) #1

declare dso_local i32 @mini_cm_dec_refcnt_listen(%struct.nes_cm_core*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @nes_manage_apbvt(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nes_rem_ref(i32*) #1

declare dso_local i32 @kfree(%struct.nes_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
