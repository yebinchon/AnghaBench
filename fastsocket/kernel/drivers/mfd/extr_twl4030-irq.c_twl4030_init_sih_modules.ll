; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl4030_init_sih_modules.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl4030_init_sih_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sih = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@irq_line = common dso_local global i32 0, align 4
@sih_modules = common dso_local global %struct.sih* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"twl4030: err %d initializing %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IMR\00", align 1
@TWL4030_SIH_CTRL_COR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SIH_CTRL\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ISR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twl4030_init_sih_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_init_sih_modules(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sih*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %160

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* @irq_line, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 255, i32 16)
  %19 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  store %struct.sih* %19, %struct.sih** %4, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %80, %15
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.sih* %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %20
  %26 = load %struct.sih*, %struct.sih** %4, align 8
  %27 = getelementptr inbounds %struct.sih, %struct.sih* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %80

31:                                               ; preds = %25
  %32 = load %struct.sih*, %struct.sih** %4, align 8
  %33 = getelementptr inbounds %struct.sih, %struct.sih* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %36 = load %struct.sih*, %struct.sih** %4, align 8
  %37 = getelementptr inbounds %struct.sih, %struct.sih* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sih*, %struct.sih** %4, align 8
  %45 = getelementptr inbounds %struct.sih, %struct.sih* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @twl4030_i2c_write(i32 %34, i32* %35, i32 %43, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %31
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sih*, %struct.sih** %4, align 8
  %53 = getelementptr inbounds %struct.sih, %struct.sih* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %31
  %57 = load %struct.sih*, %struct.sih** %4, align 8
  %58 = getelementptr inbounds %struct.sih, %struct.sih* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.sih*, %struct.sih** %4, align 8
  %63 = getelementptr inbounds %struct.sih, %struct.sih* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TWL4030_SIH_CTRL_COR_MASK, align 4
  %66 = load %struct.sih*, %struct.sih** %4, align 8
  %67 = getelementptr inbounds %struct.sih, %struct.sih* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @twl4030_i2c_write_u8(i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.sih*, %struct.sih** %4, align 8
  %75 = getelementptr inbounds %struct.sih, %struct.sih* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %78

78:                                               ; preds = %72, %61
  br label %79

79:                                               ; preds = %78, %56
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  %83 = load %struct.sih*, %struct.sih** %4, align 8
  %84 = getelementptr inbounds %struct.sih, %struct.sih* %83, i32 1
  store %struct.sih* %84, %struct.sih** %4, align 8
  br label %20

85:                                               ; preds = %20
  %86 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  store %struct.sih* %86, %struct.sih** %4, align 8
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %154, %85
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.sih*, %struct.sih** @sih_modules, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.sih* %89)
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %159

92:                                               ; preds = %87
  %93 = load %struct.sih*, %struct.sih** %4, align 8
  %94 = getelementptr inbounds %struct.sih, %struct.sih* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %154

98:                                               ; preds = %92
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %150, %98
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 2
  br i1 %101, label %102, label %153

102:                                              ; preds = %99
  %103 = load %struct.sih*, %struct.sih** %4, align 8
  %104 = getelementptr inbounds %struct.sih, %struct.sih* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %107 = load %struct.sih*, %struct.sih** %4, align 8
  %108 = getelementptr inbounds %struct.sih, %struct.sih* %107, i32 0, i32 1
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sih*, %struct.sih** %4, align 8
  %116 = getelementptr inbounds %struct.sih, %struct.sih* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @twl4030_i2c_read(i32 %105, i32* %106, i32 %114, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %102
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.sih*, %struct.sih** %4, align 8
  %124 = getelementptr inbounds %struct.sih, %struct.sih* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %127

127:                                              ; preds = %121, %102
  %128 = load %struct.sih*, %struct.sih** %4, align 8
  %129 = getelementptr inbounds %struct.sih, %struct.sih* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %127
  %133 = load %struct.sih*, %struct.sih** %4, align 8
  %134 = getelementptr inbounds %struct.sih, %struct.sih* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %137 = load %struct.sih*, %struct.sih** %4, align 8
  %138 = getelementptr inbounds %struct.sih, %struct.sih* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %3, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sih*, %struct.sih** %4, align 8
  %146 = getelementptr inbounds %struct.sih, %struct.sih* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @twl4030_i2c_write(i32 %135, i32* %136, i32 %144, i32 %147)
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %132, %127
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  br label %99

153:                                              ; preds = %99
  br label %154

154:                                              ; preds = %153, %97
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  %157 = load %struct.sih*, %struct.sih** %4, align 8
  %158 = getelementptr inbounds %struct.sih, %struct.sih* %157, i32 1
  store %struct.sih* %158, %struct.sih** %4, align 8
  br label %87

159:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %12
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sih*) #1

declare dso_local i32 @twl4030_i2c_write(i32, i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i8*) #1

declare dso_local i32 @twl4030_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl4030_i2c_read(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
