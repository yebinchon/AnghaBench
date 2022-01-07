; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_issue_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_issue_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, i32, i32, i32 }
%struct.mspro_block_data = type { i32, i64, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.mspro_param_register = type { i32, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@MSPRO_CMD_READ_DATA = common dso_local global i32 0, align 4
@MSPRO_CMD_WRITE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"data transfer: cmd %x, lba %x, count %x\0A\00", align 1
@h_mspro_block_req_init = common dso_local global i32 0, align 4
@h_mspro_block_transfer_data = common dso_local global i32 0, align 4
@MS_TPC_WRITE_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"blk_fetch\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"issue end\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"trying again\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, i32)* @mspro_block_issue_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_issue_req(%struct.memstick_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.memstick_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mspro_block_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mspro_param_register, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %11 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %10)
  store %struct.mspro_block_data* %11, %struct.mspro_block_data** %6, align 8
  br label %12

12:                                               ; preds = %140, %2
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %120

16:                                               ; preds = %13
  %17 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %18 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %17, i32 0, i32 10
  store i64 0, i64* %18, align 8
  %19 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %20 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %19, i32 0, i32 9
  store i64 0, i64* %20, align 8
  %21 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %22 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %27 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %30 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @blk_rq_map_sg(i32 %25, %struct.TYPE_7__* %28, i32 %31)
  %33 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %34 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %36 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %16
  %40 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %41 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call i32 @__blk_end_request_cur(%struct.TYPE_7__* %42, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %13

46:                                               ; preds = %16
  %47 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %48 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = call i32 @blk_rq_pos(%struct.TYPE_7__* %49)
  %51 = shl i32 %50, 9
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %54 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sector_div(i32 %52, i32 %55)
  %57 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %58 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = call i32 @blk_rq_bytes(%struct.TYPE_7__* %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %62 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = udiv i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %67 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %9, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @cpu_to_be16(i32 %70)
  %72 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %9, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @cpu_to_be32(i32 %73)
  %75 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %9, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %9, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %78 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %77, i32 0, i32 2
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i64 @rq_data_dir(%struct.TYPE_7__* %79)
  %81 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %82 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %84 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @READ, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %46
  %89 = load i32, i32* @MSPRO_CMD_READ_DATA, align 4
  br label %92

90:                                               ; preds = %46
  %91 = load i32, i32* @MSPRO_CMD_WRITE_DATA, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %95 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  %96 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %97 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %96, i32 0, i32 0
  %98 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %99 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.mspro_param_register, %struct.mspro_param_register* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @be32_to_cpu(i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %103, i32 %104)
  %106 = load i32, i32* @h_mspro_block_req_init, align 4
  %107 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %108 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @h_mspro_block_transfer_data, align 4
  %110 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %111 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %113 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %112, i32 0, i32 2
  %114 = load i32, i32* @MS_TPC_WRITE_REG, align 4
  %115 = call i32 @memstick_init_req(i32* %113, i32 %114, %struct.mspro_param_register* %9, i32 24)
  %116 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %117 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memstick_new_req(i32 %118)
  store i32 0, i32* %3, align 4
  br label %144

120:                                              ; preds = %13
  %121 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %122 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %121, i32 0, i32 0
  %123 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %125 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call %struct.TYPE_7__* @blk_fetch_request(i32 %126)
  %128 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %129 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %128, i32 0, i32 2
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %129, align 8
  %130 = load %struct.mspro_block_data*, %struct.mspro_block_data** %6, align 8
  %131 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %130, i32 0, i32 2
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = icmp ne %struct.TYPE_7__* %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %120
  %135 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %136 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @EAGAIN, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %144

140:                                              ; preds = %120
  %141 = load %struct.memstick_dev*, %struct.memstick_dev** %4, align 8
  %142 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %12

144:                                              ; preds = %134, %92
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @__blk_end_request_cur(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.TYPE_7__*) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.TYPE_7__*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memstick_init_req(i32*, i32, %struct.mspro_param_register*, i32) #1

declare dso_local i32 @memstick_new_req(i32) #1

declare dso_local %struct.TYPE_7__* @blk_fetch_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
