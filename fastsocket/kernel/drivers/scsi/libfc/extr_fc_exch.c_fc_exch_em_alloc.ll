; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_em_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_em_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { i32, i32, i64, i32, %struct.fc_lport*, %struct.fc_exch_pool*, %struct.fc_exch_mgr*, i64, i64, i32, i32, i32 }
%struct.fc_exch_pool = type { i64, i64, i32, i32, i32, i32 }
%struct.fc_lport = type { i32 }
%struct.fc_exch_mgr = type { i32, i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@fc_cpu_order = common dso_local global i32 0, align 4
@FC_FC_FIRST_SEQ = common dso_local global i32 0, align 4
@fc_exch_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fc_exch* (%struct.fc_lport*, %struct.fc_exch_mgr*)* @fc_exch_em_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fc_exch* @fc_exch_em_alloc(%struct.fc_lport* %0, %struct.fc_exch_mgr* %1) #0 {
  %3 = alloca %struct.fc_exch*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  %5 = alloca %struct.fc_exch_mgr*, align 8
  %6 = alloca %struct.fc_exch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fc_exch_pool*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %4, align 8
  store %struct.fc_exch_mgr* %1, %struct.fc_exch_mgr** %5, align 8
  %10 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %11 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.fc_exch* @mempool_alloc(i32 %12, i32 %13)
  store %struct.fc_exch* %14, %struct.fc_exch** %6, align 8
  %15 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %16 = icmp ne %struct.fc_exch* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %19 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @atomic_inc(i32* %20)
  br label %173

22:                                               ; preds = %2
  %23 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %24 = call i32 @memset(%struct.fc_exch* %23, i32 0, i32 80)
  %25 = call i32 (...) @get_cpu()
  store i32 %25, i32* %7, align 4
  %26 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %27 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.fc_exch_pool* @per_cpu_ptr(i32 %28, i32 %29)
  store %struct.fc_exch_pool* %30, %struct.fc_exch_pool** %9, align 8
  %31 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %32 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %31, i32 0, i32 3
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = call i32 (...) @put_cpu()
  %35 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %36 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %22
  %41 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %42 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %46 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %47 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %104

48:                                               ; preds = %22
  %49 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %50 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %56 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %60 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %61 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  br label %104

62:                                               ; preds = %48
  %63 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %64 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %89, %62
  %67 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i64 @fc_exch_ptr_get(%struct.fc_exch_pool* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %74 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  br label %81

81:                                               ; preds = %78, %77
  %82 = phi i32 [ 0, %77 ], [ %80, %78 ]
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %85 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %175

89:                                               ; preds = %81
  br label %66

90:                                               ; preds = %66
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %93 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi i32 [ 0, %96 ], [ %99, %97 ]
  %102 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %103 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %100, %54, %40
  %105 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %106 = call i32 @fc_exch_hold(%struct.fc_exch* %105)
  %107 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %108 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %107, i32 0, i32 11
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %111 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %110, i32 0, i32 11
  %112 = call i32 @spin_lock_bh(i32* %111)
  %113 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %116 = call i32 @fc_exch_ptr_set(%struct.fc_exch_pool* %113, i32 %114, %struct.fc_exch* %115)
  %117 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %118 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %117, i32 0, i32 10
  %119 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %120 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %119, i32 0, i32 5
  %121 = call i32 @list_add_tail(i32* %118, i32* %120)
  %122 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %123 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %124 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = call i32 @fc_seq_alloc(%struct.fc_exch* %122, i32 %125)
  %128 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %129 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 8
  %132 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %133 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %132, i32 0, i32 3
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @fc_cpu_order, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %137, %138
  %140 = zext i32 %139 to i64
  %141 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %142 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %140, %143
  %145 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %146 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %145, i32 0, i32 7
  store i64 %144, i64* %146, align 8
  %147 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %148 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %147, i32 0, i32 8
  store i64 %144, i64* %148, align 8
  %149 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %150 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %151 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %150, i32 0, i32 6
  store %struct.fc_exch_mgr* %149, %struct.fc_exch_mgr** %151, align 8
  %152 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %153 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %154 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %153, i32 0, i32 5
  store %struct.fc_exch_pool* %152, %struct.fc_exch_pool** %154, align 8
  %155 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %156 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %157 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %156, i32 0, i32 4
  store %struct.fc_lport* %155, %struct.fc_lport** %157, align 8
  %158 = load i32, i32* @FC_FC_FIRST_SEQ, align 4
  %159 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %160 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  %161 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %162 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %163 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  %164 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %165 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %168 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %170 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %169, i32 0, i32 0
  %171 = load i32, i32* @fc_exch_timeout, align 4
  %172 = call i32 @INIT_DELAYED_WORK(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %104, %17
  %174 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  store %struct.fc_exch* %174, %struct.fc_exch** %3, align 8
  br label %188

175:                                              ; preds = %88
  %176 = load %struct.fc_exch_pool*, %struct.fc_exch_pool** %9, align 8
  %177 = getelementptr inbounds %struct.fc_exch_pool, %struct.fc_exch_pool* %176, i32 0, i32 3
  %178 = call i32 @spin_unlock_bh(i32* %177)
  %179 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %180 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = call i32 @atomic_inc(i32* %181)
  %183 = load %struct.fc_exch*, %struct.fc_exch** %6, align 8
  %184 = load %struct.fc_exch_mgr*, %struct.fc_exch_mgr** %5, align 8
  %185 = getelementptr inbounds %struct.fc_exch_mgr, %struct.fc_exch_mgr* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @mempool_free(%struct.fc_exch* %183, i32 %186)
  store %struct.fc_exch* null, %struct.fc_exch** %3, align 8
  br label %188

188:                                              ; preds = %175, %173
  %189 = load %struct.fc_exch*, %struct.fc_exch** %3, align 8
  ret %struct.fc_exch* %189
}

declare dso_local %struct.fc_exch* @mempool_alloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @memset(%struct.fc_exch*, i32, i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.fc_exch_pool* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i64 @fc_exch_ptr_get(%struct.fc_exch_pool*, i32) #1

declare dso_local i32 @fc_exch_hold(%struct.fc_exch*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fc_exch_ptr_set(%struct.fc_exch_pool*, i32, %struct.fc_exch*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fc_seq_alloc(%struct.fc_exch*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mempool_free(%struct.fc_exch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
