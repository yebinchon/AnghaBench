; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_sp_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_sp_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.eth_spe = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"BUG! EQ ring full!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"BUG! SPQ ring full!\0A\00", align 1
@SPE_HDR_CMD_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_CONN_TYPE = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID_SHIFT = common dso_local global i32 0, align 4
@SPE_HDR_FUNCTION_ID = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [100 x i8] c"SPQE[%x] (%x:%x)  (cmd, common?) (%d,%d)  hw_cid %x  data (%x:%x) type(0x%x) left (CQ, EQ) (%x,%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_sp_post(%struct.bnx2x* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.eth_spe*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @bnx2x_is_contextless_ramrod(i32 %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %6
  %26 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %26, i32 0, i32 1
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  %35 = call i32 (...) @bnx2x_panic()
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %155

38:                                               ; preds = %25
  br label %53

39:                                               ; preds = %6
  %40 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 2
  %42 = call i32 @atomic_read(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = call i32 (...) @bnx2x_panic()
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %155

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %55 = call %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x* %54)
  store %struct.eth_spe* %55, %struct.eth_spe** %14, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @SPE_HDR_CMD_ID_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @HW_CID(%struct.bnx2x* %59, i32 %60)
  %62 = or i32 %58, %61
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %65 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @SPE_HDR_CONN_TYPE_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* @SPE_HDR_CONN_TYPE, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %15, align 4
  %72 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %73 = call i32 @BP_FUNC(%struct.bnx2x* %72)
  %74 = load i32, i32* @SPE_HDR_FUNCTION_ID_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* @SPE_HDR_FUNCTION_ID, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %15, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %83 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %88 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i8* %86, i8** %90, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i8* @cpu_to_le32(i32 %91)
  %93 = load %struct.eth_spe*, %struct.eth_spe** %14, align 8
  %94 = getelementptr inbounds %struct.eth_spe, %struct.eth_spe* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i8* %92, i8** %96, align 8
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %53
  %100 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %101 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %100, i32 0, i32 1
  %102 = call i32 @atomic_dec(i32* %101)
  br label %107

103:                                              ; preds = %53
  %104 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %105 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %104, i32 0, i32 2
  %106 = call i32 @atomic_dec(i32* %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* @BNX2X_MSG_SP, align 4
  %109 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %110 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %113 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @U64_HI(i32 %114)
  %116 = trunc i64 %115 to i32
  %117 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @U64_LO(i32 %119)
  %121 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %122 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = sext i32 %120 to i64
  %126 = getelementptr i8, i8* %124, i64 %125
  %127 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i8*
  %131 = ptrtoint i8* %126 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @HW_CID(%struct.bnx2x* %137, i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %144 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %143, i32 0, i32 2
  %145 = call i32 @atomic_read(i32* %144)
  %146 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %147 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %146, i32 0, i32 1
  %148 = call i32 @atomic_read(i32* %147)
  %149 = call i32 @DP(i32 %108, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %116, i32 %134, i32 %135, i32 %136, i32 %139, i32 %140, i32 %141, i32 %142, i32 %145, i32 %148)
  %150 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %151 = call i32 @bnx2x_sp_prod_update(%struct.bnx2x* %150)
  %152 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %153 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %152, i32 0, i32 0
  %154 = call i32 @spin_unlock_bh(i32* %153)
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %107, %44, %30
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @bnx2x_is_contextless_ramrod(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2x_panic(...) #1

declare dso_local %struct.eth_spe* @bnx2x_sp_get_next(%struct.bnx2x*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

declare dso_local i32 @bnx2x_sp_prod_update(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
