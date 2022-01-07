; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_iscsi_nl_msg_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_iscsi_nl_msg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_sock*, i32* }
%struct.cnic_sock = type { i32, i32*, i32*, i32 }
%struct.iscsi_path = type { %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_CM_SK_TBL_SZ = common dso_local global i32 0, align 4
@CNIC_ULP_L4 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@SK_F_CONNECT_START = common dso_local global i32 0, align 4
@SK_F_IPV6 = common dso_local global i32 0, align 4
@SK_F_OFFLD_SCHED = common dso_local global i32 0, align 4
@SK_F_OFFLD_COMPLETE = common dso_local global i32 0, align 4
@L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i32, i8*, i32)* @cnic_iscsi_nl_msg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_iscsi_nl_msg_recv(%struct.cnic_dev* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cnic_local*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cnic_sock*, align 8
  %13 = alloca %struct.iscsi_path*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %139 [
    i32 128, label %17
  ]

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 24
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %139

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.iscsi_path*
  store %struct.iscsi_path* %24, %struct.iscsi_path** %13, align 8
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %5, align 8
  %26 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %25, i32 0, i32 0
  %27 = load %struct.cnic_local*, %struct.cnic_local** %26, align 8
  store %struct.cnic_local* %27, %struct.cnic_local** %10, align 8
  %28 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %29 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MAX_CM_SK_TBL_SZ, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %139

35:                                               ; preds = %22
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %38 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @CNIC_ULP_L4, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rcu_dereference(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %9, align 4
  %48 = call i32 (...) @rcu_read_unlock()
  br label %139

49:                                               ; preds = %35
  %50 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %51 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %50, i32 0, i32 0
  %52 = load %struct.cnic_sock*, %struct.cnic_sock** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %52, i64 %54
  store %struct.cnic_sock* %55, %struct.cnic_sock** %12, align 8
  %56 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %57 = call i32 @csk_hold(%struct.cnic_sock* %56)
  %58 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %59 = call i32 @cnic_in_use(%struct.cnic_sock* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %135

61:                                               ; preds = %49
  %62 = load i32, i32* @SK_F_CONNECT_START, align 4
  %63 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %64 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %63, i32 0, i32 0
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %135

67:                                               ; preds = %61
  %68 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %69 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %72 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %74 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %77 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @memcpy(i32* %75, i32* %78, i32 6)
  %80 = load i32, i32* @SK_F_IPV6, align 4
  %81 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %82 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %81, i32 0, i32 0
  %83 = call i32 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %67
  %86 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %87 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %91 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = call i32 @memcpy(i32* %89, i32* %92, i32 4)
  br label %103

94:                                               ; preds = %67
  %95 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %96 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load %struct.iscsi_path*, %struct.iscsi_path** %13, align 8
  %100 = getelementptr inbounds %struct.iscsi_path, %struct.iscsi_path* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = call i32 @memcpy(i32* %98, i32* %101, i32 4)
  br label %103

103:                                              ; preds = %94, %85
  %104 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %105 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @is_valid_ether_addr(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %111 = call i32 @cnic_cm_set_pg(%struct.cnic_sock* %110)
  br label %134

112:                                              ; preds = %103
  %113 = load i32, i32* @SK_F_OFFLD_SCHED, align 4
  %114 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %115 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %114, i32 0, i32 0
  %116 = call i32 @test_bit(i32 %113, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %133, label %118

118:                                              ; preds = %112
  %119 = load i32, i32* @SK_F_OFFLD_COMPLETE, align 4
  %120 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %121 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %120, i32 0, i32 0
  %122 = call i32 @test_bit(i32 %119, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %118
  %125 = load %struct.cnic_local*, %struct.cnic_local** %10, align 8
  %126 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %127 = load i32, i32* @L4_KCQE_OPCODE_VALUE_CONNECT_COMPLETE, align 4
  %128 = call i32 @cnic_cm_upcall(%struct.cnic_local* %125, %struct.cnic_sock* %126, i32 %127)
  %129 = load i32, i32* @SK_F_CONNECT_START, align 4
  %130 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %131 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %130, i32 0, i32 0
  %132 = call i32 @clear_bit(i32 %129, i32* %131)
  br label %133

133:                                              ; preds = %124, %118, %112
  br label %134

134:                                              ; preds = %133, %109
  br label %135

135:                                              ; preds = %134, %61, %49
  %136 = load %struct.cnic_sock*, %struct.cnic_sock** %12, align 8
  %137 = call i32 @csk_put(%struct.cnic_sock* %136)
  %138 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %135, %4, %45, %34, %21
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @csk_hold(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @cnic_cm_set_pg(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_cm_upcall(%struct.cnic_local*, %struct.cnic_sock*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @csk_put(%struct.cnic_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
