; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_set_proto_sram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_t3_set_proto_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@PROTO_SRAM_LINES = common dso_local global i32 0, align 4
@A_TP_EMBED_OP_FIELD5 = common dso_local global i32 0, align 4
@A_TP_EMBED_OP_FIELD4 = common dso_local global i32 0, align 4
@A_TP_EMBED_OP_FIELD3 = common dso_local global i32 0, align 4
@A_TP_EMBED_OP_FIELD2 = common dso_local global i32 0, align 4
@A_TP_EMBED_OP_FIELD1 = common dso_local global i32 0, align 4
@A_TP_EMBED_OP_FIELD0 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_set_proto_sram(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32* %8, i32** %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %63, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PROTO_SRAM_LINES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = load i32, i32* @A_TP_EMBED_OP_FIELD5, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* %16, align 4
  %19 = call i32 @be32_to_cpu(i32 %18)
  %20 = call i32 @t3_write_reg(%struct.adapter* %14, i32 %15, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load i32, i32* @A_TP_EMBED_OP_FIELD4, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* %23, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  %27 = call i32 @t3_write_reg(%struct.adapter* %21, i32 %22, i32 %26)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i32, i32* @A_TP_EMBED_OP_FIELD3, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %7, align 8
  %32 = load i32, i32* %30, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = call i32 @t3_write_reg(%struct.adapter* %28, i32 %29, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = load i32, i32* @A_TP_EMBED_OP_FIELD2, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = call i32 @t3_write_reg(%struct.adapter* %35, i32 %36, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = load i32, i32* @A_TP_EMBED_OP_FIELD1, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %44, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = call i32 @t3_write_reg(%struct.adapter* %42, i32 %43, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %4, align 8
  %50 = load i32, i32* @A_TP_EMBED_OP_FIELD0, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 1
  %53 = or i32 %52, -2147483648
  %54 = call i32 @t3_write_reg(%struct.adapter* %49, i32 %50, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load i32, i32* @A_TP_EMBED_OP_FIELD0, align 4
  %57 = call i64 @t3_wait_op_done(%struct.adapter* %55, i32 %56, i32 1, i32 1, i32 5, i32 1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %13
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %70

62:                                               ; preds = %13
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %9

66:                                               ; preds = %9
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = load i32, i32* @A_TP_EMBED_OP_FIELD0, align 4
  %69 = call i32 @t3_write_reg(%struct.adapter* %67, i32 %68, i32 0)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
