; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_mtseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_34xx.c_tape_34xx_mtseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i32* }
%struct.tape_request = type { i32*, i64, i32 }
%struct.tape_34xx_block_id = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"xsee parm\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TO_LBL = common dso_local global i32 0, align 4
@TAPE34XX_FMT_3480_XF = common dso_local global i32 0, align 4
@TAPE34XX_FMT_3480 = common dso_local global i32 0, align 4
@MODE_SET_DB = common dso_local global i32 0, align 4
@LOCATE = common dso_local global i32 0, align 4
@NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tape_device*, i32)* @tape_34xx_mtseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tape_34xx_mtseek(%struct.tape_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tape_request*, align 8
  %7 = alloca %struct.tape_34xx_block_id*, align 8
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 4194303
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = call i32 @DBF_EXCEPTION(i32 6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = call %struct.tape_request* @tape_alloc_request(i32 3, i32 4)
  store %struct.tape_request* %15, %struct.tape_request** %6, align 8
  %16 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %17 = call i64 @IS_ERR(%struct.tape_request* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.tape_request* %20)
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %14
  %23 = load i32, i32* @TO_LBL, align 4
  %24 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %25 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %27 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = bitcast i32* %28 to %struct.tape_34xx_block_id*
  store %struct.tape_34xx_block_id* %29, %struct.tape_34xx_block_id** %7, align 8
  %30 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %31 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* @TAPE34XX_FMT_3480_XF, align 4
  br label %40

38:                                               ; preds = %22
  %39 = load i32, i32* @TAPE34XX_FMT_3480, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.tape_34xx_block_id*, %struct.tape_34xx_block_id** %7, align 8
  %43 = getelementptr inbounds %struct.tape_34xx_block_id, %struct.tape_34xx_block_id* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.tape_34xx_block_id*, %struct.tape_34xx_block_id** %7, align 8
  %46 = getelementptr inbounds %struct.tape_34xx_block_id, %struct.tape_34xx_block_id* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %48 = load %struct.tape_34xx_block_id*, %struct.tape_34xx_block_id** %7, align 8
  %49 = call i32 @tape_34xx_merge_sbid(%struct.tape_device* %47, %struct.tape_34xx_block_id* %48)
  %50 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %51 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @MODE_SET_DB, align 4
  %54 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %55 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @tape_ccw_cc(i64 %52, i32 %53, i32 1, i32* %56)
  %58 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %59 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* @LOCATE, align 4
  %63 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %64 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @tape_ccw_cc(i64 %61, i32 %62, i32 4, i32* %65)
  %67 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %68 = getelementptr inbounds %struct.tape_request, %struct.tape_request* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 2
  %71 = load i32, i32* @NOP, align 4
  %72 = call i32 @tape_ccw_end(i64 %70, i32 %71, i32 0, i32* null)
  %73 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %74 = load %struct.tape_request*, %struct.tape_request** %6, align 8
  %75 = call i32 @tape_do_io_free(%struct.tape_device* %73, %struct.tape_request* %74)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %40, %19, %10
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @DBF_EXCEPTION(i32, i8*) #1

declare dso_local %struct.tape_request* @tape_alloc_request(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tape_request*) #1

declare dso_local i32 @PTR_ERR(%struct.tape_request*) #1

declare dso_local i32 @tape_34xx_merge_sbid(%struct.tape_device*, %struct.tape_34xx_block_id*) #1

declare dso_local i32 @tape_ccw_cc(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_ccw_end(i64, i32, i32, i32*) #1

declare dso_local i32 @tape_do_io_free(%struct.tape_device*, %struct.tape_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
