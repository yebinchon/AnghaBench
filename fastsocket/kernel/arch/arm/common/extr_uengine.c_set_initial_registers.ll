; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_set_initial_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_uengine.c_set_initial_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixp2000_uengine_code = type { i32, %struct.ixp2000_reg_value* }
%struct.ixp2000_reg_value = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IXP2000_UENGINE_4_CONTEXTS = common dso_local global i32 0, align 4
@ACTIVE_CTX_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ixp2000_uengine_code*)* @set_initial_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_initial_registers(i32 %0, %struct.ixp2000_uengine_code* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixp2000_uengine_code*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ixp2000_reg_value*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.ixp2000_uengine_code* %1, %struct.ixp2000_uengine_code** %5, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kzalloc(i32 512, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kzalloc(i32 512, i32 %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kmalloc(i32 2565, i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %8, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27, %24, %2
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @kfree(i32* %35)
  store i32 1, i32* %3, align 4
  br label %146

37:                                               ; preds = %27
  store i32 16, i32* %6, align 4
  %38 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %39 = getelementptr inbounds %struct.ixp2000_uengine_code, %struct.ixp2000_uengine_code* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IXP2000_UENGINE_4_CONTEXTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 32, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %37
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %102, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 256
  br i1 %48, label %49, label %105

49:                                               ; preds = %46
  %50 = load %struct.ixp2000_uengine_code*, %struct.ixp2000_uengine_code** %5, align 8
  %51 = getelementptr inbounds %struct.ixp2000_uengine_code, %struct.ixp2000_uengine_code* %50, i32 0, i32 1
  %52 = load %struct.ixp2000_reg_value*, %struct.ixp2000_reg_value** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ixp2000_reg_value, %struct.ixp2000_reg_value* %52, i64 %54
  store %struct.ixp2000_reg_value* %55, %struct.ixp2000_reg_value** %11, align 8
  %56 = load %struct.ixp2000_reg_value*, %struct.ixp2000_reg_value** %11, align 8
  %57 = getelementptr inbounds %struct.ixp2000_reg_value, %struct.ixp2000_reg_value* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %105

61:                                               ; preds = %49
  %62 = load %struct.ixp2000_reg_value*, %struct.ixp2000_reg_value** %11, align 8
  %63 = getelementptr inbounds %struct.ixp2000_reg_value, %struct.ixp2000_reg_value* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 1024
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32*, i32** %8, align 8
  br label %71

69:                                               ; preds = %61
  %70 = load i32*, i32** %7, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32* [ %68, %67 ], [ %70, %69 ]
  store i32* %72, i32** %12, align 8
  %73 = load %struct.ixp2000_reg_value*, %struct.ixp2000_reg_value** %11, align 8
  %74 = getelementptr inbounds %struct.ixp2000_reg_value, %struct.ixp2000_reg_value* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 128
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ 128, %78 ], [ %80, %79 ]
  store i32 %82, i32* %13, align 4
  %83 = load %struct.ixp2000_reg_value*, %struct.ixp2000_reg_value** %11, align 8
  %84 = getelementptr inbounds %struct.ixp2000_reg_value, %struct.ixp2000_reg_value* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 127
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %90, %81
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 128
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.ixp2000_reg_value*, %struct.ixp2000_reg_value** %11, align 8
  %92 = getelementptr inbounds %struct.ixp2000_reg_value, %struct.ixp2000_reg_value* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %87

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %46

105:                                              ; preds = %60, %46
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @generate_ucode(i32* %106, i32* %107, i32* %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = call i32 @ixp2000_uengine_load_microcode(i32 %110, i32* %111, i32 513)
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @ixp2000_uengine_init_context(i32 %113, i32 0, i32 0)
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @ixp2000_uengine_start_contexts(i32 %115, i32 1)
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %129, %105
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %118, 100
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @ACTIVE_CTX_STS, align 4
  %123 = call i32 @ixp2000_uengine_csr_read(i32 %121, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = and i32 %124, -2147483648
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %132

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %117

132:                                              ; preds = %127, %117
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @ixp2000_uengine_stop_contexts(i32 %133, i32 1)
  %135 = load i32*, i32** %9, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = load i32*, i32** %8, align 8
  %138 = call i32 @kfree(i32* %137)
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @kfree(i32* %139)
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 100
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %132, %30
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @generate_ucode(i32*, i32*, i32*) #1

declare dso_local i32 @ixp2000_uengine_load_microcode(i32, i32*, i32) #1

declare dso_local i32 @ixp2000_uengine_init_context(i32, i32, i32) #1

declare dso_local i32 @ixp2000_uengine_start_contexts(i32, i32) #1

declare dso_local i32 @ixp2000_uengine_csr_read(i32, i32) #1

declare dso_local i32 @ixp2000_uengine_stop_contexts(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
