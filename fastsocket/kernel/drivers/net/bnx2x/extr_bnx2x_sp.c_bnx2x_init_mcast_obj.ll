; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_mcast_obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_init_mcast_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mcast_obj = type { i32, i8*, i8*, i32, i32, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BNX2X_FILTER_MCAST_SCHED = common dso_local global i32 0, align 4
@bnx2x_mcast_check_sched = common dso_local global i32 0, align 4
@bnx2x_mcast_set_sched = common dso_local global i32 0, align 4
@bnx2x_mcast_clear_sched = common dso_local global i32 0, align 4
@bnx2x_mcast_setup_e1 = common dso_local global i32 0, align 4
@bnx2x_mcast_enqueue_cmd = common dso_local global i8* null, align 8
@bnx2x_mcast_handle_restore_cmd_e1 = common dso_local global i32* null, align 8
@bnx2x_mcast_check_pending = common dso_local global i8* null, align 8
@BNX2X_MAX_EMUL_MULTI = common dso_local global i32 0, align 4
@BNX2X_MAX_MULTICAST = common dso_local global i32 0, align 4
@bnx2x_mcast_wait = common dso_local global i8* null, align 8
@bnx2x_mcast_set_one_rule_e1 = common dso_local global i32* null, align 8
@bnx2x_mcast_validate_e1 = common dso_local global i32 0, align 4
@bnx2x_mcast_revert_e1 = common dso_local global i32 0, align 4
@bnx2x_mcast_get_registry_size_exact = common dso_local global i8* null, align 8
@bnx2x_mcast_set_registry_size_exact = common dso_local global i8* null, align 8
@bnx2x_mcast_setup_e1h = common dso_local global i32 0, align 4
@bnx2x_mcast_validate_e1h = common dso_local global i32 0, align 4
@bnx2x_mcast_revert_e1h = common dso_local global i32 0, align 4
@bnx2x_mcast_get_registry_size_aprox = common dso_local global i8* null, align 8
@bnx2x_mcast_set_registry_size_aprox = common dso_local global i8* null, align 8
@bnx2x_mcast_setup_e2 = common dso_local global i32 0, align 4
@bnx2x_mcast_handle_restore_cmd_e2 = common dso_local global i32* null, align 8
@bnx2x_mcast_set_one_rule_e2 = common dso_local global i32* null, align 8
@bnx2x_mcast_validate_e2 = common dso_local global i32 0, align 4
@bnx2x_mcast_revert_e2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_init_mcast_obj(%struct.bnx2x* %0, %struct.bnx2x_mcast_obj* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i64* %9, i32 %10) #0 {
  %12 = alloca %struct.bnx2x*, align 8
  %13 = alloca %struct.bnx2x_mcast_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %12, align 8
  store %struct.bnx2x_mcast_obj* %1, %struct.bnx2x_mcast_obj** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i64* %9, i64** %21, align 8
  store i32 %10, i32* %22, align 4
  %23 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %24 = call i32 @memset(%struct.bnx2x_mcast_obj* %23, i32 0, i32 112)
  %25 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %26 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %25, i32 0, i32 18
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i8*, i8** %18, align 8
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %20, align 4
  %33 = load i64*, i64** %21, align 8
  %34 = load i32, i32* %22, align 4
  %35 = call i32 @bnx2x_init_raw_obj(i32* %26, i32 %27, i32 %28, i32 %29, i8* %30, i32 %31, i32 %32, i64* %33, i32 %34)
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %38 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %40 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %39, i32 0, i32 16
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load i32, i32* @BNX2X_FILTER_MCAST_SCHED, align 4
  %43 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %44 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @bnx2x_mcast_check_sched, align 4
  %46 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %47 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @bnx2x_mcast_set_sched, align 4
  %49 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %50 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @bnx2x_mcast_clear_sched, align 4
  %52 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %53 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %55 = call i64 @CHIP_IS_E1(%struct.bnx2x* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %106

57:                                               ; preds = %11
  %58 = load i32, i32* @bnx2x_mcast_setup_e1, align 4
  %59 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %60 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load i8*, i8** @bnx2x_mcast_enqueue_cmd, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %64 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %63, i32 0, i32 9
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** @bnx2x_mcast_handle_restore_cmd_e1, align 8
  %66 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %67 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %66, i32 0, i32 8
  store i32* %65, i32** %67, align 8
  %68 = load i8*, i8** @bnx2x_mcast_check_pending, align 8
  %69 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %70 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %69, i32 0, i32 7
  store i8* %68, i8** %70, align 8
  %71 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %72 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %57
  %75 = load i32, i32* @BNX2X_MAX_EMUL_MULTI, align 4
  %76 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %77 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %57
  %79 = load i32, i32* @BNX2X_MAX_MULTICAST, align 4
  %80 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %81 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i8*, i8** @bnx2x_mcast_wait, align 8
  %84 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %85 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** @bnx2x_mcast_set_one_rule_e1, align 8
  %87 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %88 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %87, i32 0, i32 5
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* @bnx2x_mcast_validate_e1, align 4
  %90 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %91 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @bnx2x_mcast_revert_e1, align 4
  %93 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %94 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load i8*, i8** @bnx2x_mcast_get_registry_size_exact, align 8
  %96 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %97 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @bnx2x_mcast_set_registry_size_exact, align 8
  %99 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %100 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  %101 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %102 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %101, i32 0, i32 11
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  br label %175

106:                                              ; preds = %11
  %107 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  %108 = call i64 @CHIP_IS_E1H(%struct.bnx2x* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %106
  %111 = load i32, i32* @bnx2x_mcast_setup_e1h, align 4
  %112 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %113 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %115 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %114, i32 0, i32 9
  store i32* null, i32** %115, align 8
  %116 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %117 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %116, i32 0, i32 8
  store i32* null, i32** %117, align 8
  %118 = load i8*, i8** @bnx2x_mcast_check_pending, align 8
  %119 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %120 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %122 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %121, i32 0, i32 0
  store i32 -1, i32* %122, align 8
  %123 = load i8*, i8** @bnx2x_mcast_wait, align 8
  %124 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %125 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %124, i32 0, i32 6
  store i8* %123, i8** %125, align 8
  %126 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %127 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %126, i32 0, i32 5
  store i32* null, i32** %127, align 8
  %128 = load i32, i32* @bnx2x_mcast_validate_e1h, align 4
  %129 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %130 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @bnx2x_mcast_revert_e1h, align 4
  %132 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %133 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load i8*, i8** @bnx2x_mcast_get_registry_size_aprox, align 8
  %135 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %136 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @bnx2x_mcast_set_registry_size_aprox, align 8
  %138 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %139 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %174

140:                                              ; preds = %106
  %141 = load i32, i32* @bnx2x_mcast_setup_e2, align 4
  %142 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %143 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %142, i32 0, i32 10
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** @bnx2x_mcast_enqueue_cmd, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %147 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %146, i32 0, i32 9
  store i32* %145, i32** %147, align 8
  %148 = load i32*, i32** @bnx2x_mcast_handle_restore_cmd_e2, align 8
  %149 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %150 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %149, i32 0, i32 8
  store i32* %148, i32** %150, align 8
  %151 = load i8*, i8** @bnx2x_mcast_check_pending, align 8
  %152 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %153 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %152, i32 0, i32 7
  store i8* %151, i8** %153, align 8
  %154 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %155 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %154, i32 0, i32 0
  store i32 16, i32* %155, align 8
  %156 = load i8*, i8** @bnx2x_mcast_wait, align 8
  %157 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %158 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %157, i32 0, i32 6
  store i8* %156, i8** %158, align 8
  %159 = load i32*, i32** @bnx2x_mcast_set_one_rule_e2, align 8
  %160 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %161 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %160, i32 0, i32 5
  store i32* %159, i32** %161, align 8
  %162 = load i32, i32* @bnx2x_mcast_validate_e2, align 4
  %163 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %164 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* @bnx2x_mcast_revert_e2, align 4
  %166 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %167 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load i8*, i8** @bnx2x_mcast_get_registry_size_aprox, align 8
  %169 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %170 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %169, i32 0, i32 2
  store i8* %168, i8** %170, align 8
  %171 = load i8*, i8** @bnx2x_mcast_set_registry_size_aprox, align 8
  %172 = load %struct.bnx2x_mcast_obj*, %struct.bnx2x_mcast_obj** %13, align 8
  %173 = getelementptr inbounds %struct.bnx2x_mcast_obj, %struct.bnx2x_mcast_obj* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %140, %110
  br label %175

175:                                              ; preds = %174, %82
  ret void
}

declare dso_local i32 @memset(%struct.bnx2x_mcast_obj*, i32, i32) #1

declare dso_local i32 @bnx2x_init_raw_obj(i32*, i32, i32, i32, i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
