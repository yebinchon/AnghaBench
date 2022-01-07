; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_process_kcqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_cm_process_kcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32 (%struct.cnic_sock*, i32)*, %struct.cnic_sock* }
%struct.cnic_sock = type { i32, i32 }
%struct.kcqe = type { i32 }
%struct.l4_kcq = type { i32, i64, i64, i32 }

@FCOE_RAMROD_CMD_ID_TERMINATE_CONN = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_OFFLOAD_PG = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_UPDATE_PG = common dso_local global i32 0, align 4
@MAX_CM_SK_TBL_SZ = common dso_local global i64 0, align 8
@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@L4_KCQE_COMPLETION_STATUS_PARITY_ERROR = common dso_local global i32 0, align 4
@SK_F_HW_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RAMROD CLOSE compl with status 0x%x\0A\00", align 1
@CNIC_F_BNX2X_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*, %struct.kcqe*)* @cnic_cm_process_kcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_cm_process_kcqe(%struct.cnic_dev* %0, %struct.kcqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kcqe*, align 8
  %5 = alloca %struct.cnic_local*, align 8
  %6 = alloca %struct.l4_kcq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.cnic_sock*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kcqe* %1, %struct.kcqe** %4, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 2
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %5, align 8
  %13 = load %struct.kcqe*, %struct.kcqe** %4, align 8
  %14 = bitcast %struct.kcqe* %13 to %struct.l4_kcq*
  store %struct.l4_kcq* %14, %struct.l4_kcq** %6, align 8
  %15 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %16 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @FCOE_RAMROD_CMD_ID_TERMINATE_CONN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %23 = load %struct.kcqe*, %struct.kcqe** %4, align 8
  %24 = call i32 @cnic_process_fcoe_term_conn(%struct.cnic_dev* %22, %struct.kcqe* %23)
  br label %180

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @L4_KCQE_OPCODE_VALUE_OFFLOAD_PG, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @L4_KCQE_OPCODE_VALUE_UPDATE_PG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %25
  %34 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %35 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %36 = call i32 @cnic_cm_process_offld_pg(%struct.cnic_dev* %34, %struct.l4_kcq* %35)
  br label %180

37:                                               ; preds = %29
  %38 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %39 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %46 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @MAX_CM_SK_TBL_SZ, align 8
  %51 = icmp uge i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %180

53:                                               ; preds = %48
  %54 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 1
  %56 = load %struct.cnic_sock*, %struct.cnic_sock** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %56, i64 %57
  store %struct.cnic_sock* %58, %struct.cnic_sock** %9, align 8
  %59 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %60 = call i32 @csk_hold(%struct.cnic_sock* %59)
  %61 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %62 = call i32 @cnic_in_use(%struct.cnic_sock* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %66 = call i32 @csk_put(%struct.cnic_sock* %65)
  br label %180

67:                                               ; preds = %53
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %177 [
    i32 129, label %69
    i32 134, label %83
    i32 131, label %115
    i32 132, label %130
    i32 136, label %130
    i32 133, label %130
    i32 130, label %130
    i32 128, label %130
    i32 135, label %148
  ]

69:                                               ; preds = %67
  %70 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %71 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %76 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %77 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %76, i32 0, i32 1
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  %79 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %80 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %81 = call i32 @cnic_cm_upcall(%struct.cnic_local* %79, %struct.cnic_sock* %80, i32 134)
  br label %82

82:                                               ; preds = %74, %69
  br label %177

83:                                               ; preds = %67
  %84 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %85 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %90 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %91 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %90, i32 0, i32 1
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  br label %105

93:                                               ; preds = %83
  %94 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %95 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @L4_KCQE_COMPLETION_STATUS_PARITY_ERROR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* @SK_F_HW_ERR, align 4
  %101 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %102 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %101, i32 0, i32 1
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %88
  %106 = call i32 (...) @smp_mb__before_clear_bit()
  %107 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %108 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %109 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %108, i32 0, i32 1
  %110 = call i32 @clear_bit(i32 %107, i32* %109)
  %111 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %112 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @cnic_cm_upcall(%struct.cnic_local* %111, %struct.cnic_sock* %112, i32 %113)
  br label %177

115:                                              ; preds = %67
  %116 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %117 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %122 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %125 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @netdev_warn(i32 %123, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %126)
  store i32 136, i32* %7, align 4
  br label %129

128:                                              ; preds = %115
  br label %177

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %67, %67, %67, %67, %67, %129
  %131 = load %struct.l4_kcq*, %struct.l4_kcq** %6, align 8
  %132 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @L4_KCQE_COMPLETION_STATUS_PARITY_ERROR, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* @SK_F_HW_ERR, align 4
  %138 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %139 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %138, i32 0, i32 1
  %140 = call i32 @set_bit(i32 %137, i32* %139)
  br label %141

141:                                              ; preds = %136, %130
  %142 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %143 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %142, i32 0, i32 0
  %144 = load i32 (%struct.cnic_sock*, i32)*, i32 (%struct.cnic_sock*, i32)** %143, align 8
  %145 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 %144(%struct.cnic_sock* %145, i32 %146)
  br label %177

148:                                              ; preds = %67
  %149 = load i32, i32* @CNIC_F_BNX2X_CLASS, align 4
  %150 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %151 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %150, i32 0, i32 0
  %152 = call i32 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %156 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %157 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %156, i32 0, i32 1
  %158 = call i32 @test_bit(i32 %155, i32* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %154
  %161 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %162 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 136
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %167 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %166, i32 0, i32 0
  %168 = load i32 (%struct.cnic_sock*, i32)*, i32 (%struct.cnic_sock*, i32)** %167, align 8
  %169 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %170 = call i32 %168(%struct.cnic_sock* %169, i32 133)
  br label %176

171:                                              ; preds = %160, %154, %148
  %172 = load %struct.cnic_local*, %struct.cnic_local** %5, align 8
  %173 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @cnic_cm_upcall(%struct.cnic_local* %172, %struct.cnic_sock* %173, i32 %174)
  br label %176

176:                                              ; preds = %171, %165
  br label %177

177:                                              ; preds = %67, %176, %141, %128, %105, %82
  %178 = load %struct.cnic_sock*, %struct.cnic_sock** %9, align 8
  %179 = call i32 @csk_put(%struct.cnic_sock* %178)
  br label %180

180:                                              ; preds = %177, %64, %52, %33, %21
  ret void
}

declare dso_local i32 @cnic_process_fcoe_term_conn(%struct.cnic_dev*, %struct.kcqe*) #1

declare dso_local i32 @cnic_cm_process_offld_pg(%struct.cnic_dev*, %struct.l4_kcq*) #1

declare dso_local i32 @csk_hold(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i32 @csk_put(%struct.cnic_sock*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
