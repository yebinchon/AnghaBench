; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_csr.c_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.hpsb_host*, i32, i32)* }

@CSR_REGISTER_BASE = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"doh, someone wants to mess with state clear\0A\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"doh, someone wants to mess with state set\0A\00", align 1
@NODE_MASK = common dso_local global i32 0, align 4
@BUS_MASK = common dso_local global i32 0, align 4
@SET_BUS_ID = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@SET_CYCLE_COUNTER = common dso_local global i32 0, align 4
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hpsb_host*, i32, i32, i32*, i32, i64, i32)* @write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_regs(%struct.hpsb_host* %0, i32 %1, i32 %2, i32* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpsb_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @CSR_REGISTER_BASE, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %14, align 8
  %23 = or i64 %21, %22
  %24 = and i64 %23, 3
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %27, i32* %8, align 4
  br label %160

28:                                               ; preds = %7
  %29 = load i64, i64* %14, align 8
  %30 = udiv i64 %29, 4
  store i64 %30, i64* %14, align 8
  %31 = load i32, i32* %16, align 4
  switch i32 %31, label %158 [
    i32 129, label %32
    i32 128, label %35
    i32 133, label %38
    i32 132, label %78
    i32 131, label %81
    i32 130, label %94
    i32 134, label %108
    i32 137, label %128
    i32 139, label %139
    i32 138, label %141
    i32 141, label %141
    i32 136, label %141
    i32 135, label %141
    i32 140, label %143
  ]

32:                                               ; preds = %28
  %33 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @out, align 4
  br label %35

35:                                               ; preds = %28, %32
  %36 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @out, align 4
  br label %38

38:                                               ; preds = %28, %35
  %39 = load i32, i32* @NODE_MASK, align 4
  %40 = shl i32 %39, 16
  %41 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %42 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %40
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* %46, align 4
  %49 = call i32 @be32_to_cpu(i32 %48)
  %50 = load i32, i32* @BUS_MASK, align 4
  %51 = shl i32 %50, 16
  %52 = and i32 %49, %51
  %53 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %54 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %52
  store i32 %57, i32* %55, align 4
  %58 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %59 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 16
  %63 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %64 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %66 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %68, align 8
  %70 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %71 = load i32, i32* @SET_BUS_ID, align 4
  %72 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %73 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 6
  %76 = call i32 %69(%struct.hpsb_host* %70, i32 %71, i32 %75)
  %77 = load i32, i32* @out, align 4
  br label %78

78:                                               ; preds = %28, %38
  %79 = load i32, i32* @out, align 4
  %80 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %80, i32* %8, align 4
  br label %160

81:                                               ; preds = %28
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %12, align 8
  %84 = load i32, i32* %82, align 4
  %85 = call i32 @be32_to_cpu(i32 %84)
  %86 = and i32 %85, 7
  %87 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %88 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %91 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %90, i32 0, i32 1
  %92 = call i32 @calculate_expire(%struct.TYPE_4__* %91)
  %93 = load i32, i32* @out, align 4
  br label %94

94:                                               ; preds = %28, %81
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %12, align 8
  %97 = load i32, i32* %95, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = and i32 %98, -524288
  %100 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %101 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  store i32 %99, i32* %102, align 4
  %103 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %104 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %103, i32 0, i32 1
  %105 = call i32 @calculate_expire(%struct.TYPE_4__* %104)
  %106 = load i32, i32* @out, align 4
  %107 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %107, i32* %8, align 4
  br label %160

108:                                              ; preds = %28
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be32_to_cpu(i32 %110)
  %112 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %113 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  %115 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %116 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %115, i32 0, i32 2
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.hpsb_host*, i32, i32)*, i32 (%struct.hpsb_host*, i32, i32)** %118, align 8
  %120 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %121 = load i32, i32* @SET_CYCLE_COUNTER, align 4
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %12, align 8
  %124 = load i32, i32* %122, align 4
  %125 = call i32 @be32_to_cpu(i32 %124)
  %126 = call i32 %119(%struct.hpsb_host* %120, i32 %121, i32 %125)
  %127 = load i32, i32* @out, align 4
  br label %128

128:                                              ; preds = %28, %108
  %129 = load i32*, i32** %12, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %12, align 8
  %131 = load i32, i32* %129, align 4
  %132 = call i32 @be32_to_cpu(i32 %131)
  %133 = and i32 %132, -128
  %134 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %135 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @out, align 4
  %138 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %138, i32* %8, align 4
  br label %160

139:                                              ; preds = %28
  %140 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %140, i32* %8, align 4
  br label %160

141:                                              ; preds = %28, %28, %28, %28
  %142 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %142, i32* %8, align 4
  br label %160

143:                                              ; preds = %28
  %144 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %145 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, -1073741825
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be32_to_cpu(i32 %150)
  %152 = and i32 %151, 1073741824
  %153 = or i32 %148, %152
  %154 = load %struct.hpsb_host*, %struct.hpsb_host** %9, align 8
  %155 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 5
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @out, align 4
  br label %158

158:                                              ; preds = %28, %143
  %159 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %159, i32* %8, align 4
  br label %160

160:                                              ; preds = %158, %141, %139, %128, %94, %78, %26
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @calculate_expire(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
