; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_init_morpheus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ips.c_ips_init_morpheus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"ips_init_morpheus\00", align 1
@IPS_REG_I2O_HIR = common dso_local global i64 0, align 8
@IPS_BIT_I960_MSG0I = common dso_local global i32 0, align 4
@IPS_ONE_SEC = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"timeout waiting for post.\0A\00", align 1
@IPS_REG_I960_MSG0 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Flashing Battery PIC, Please wait ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"timeout waiting for Battery PIC Flash\0A\00", align 1
@IPS_GOOD_POST_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"reset controller fails (post status %x).\0A\00", align 1
@IPS_BIT_I960_MSG1I = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"timeout waiting for config.\0A\00", align 1
@IPS_REG_I960_MSG1 = common dso_local global i64 0, align 8
@IPS_REG_I960_OIMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @ips_init_morpheus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ips_init_morpheus(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = call i32 @METHOD_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 45
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPS_REG_I2O_HIR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IPS_BIT_I960_MSG0I, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %31

25:                                               ; preds = %13
  %26 = load i32, i32* @IPS_ONE_SEC, align 4
  %27 = call i32 @MDELAY(i32 %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %10

31:                                               ; preds = %24, %10
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %32, 45
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @KERN_WARNING, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %35, i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %186

40:                                               ; preds = %31
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IPS_REG_I960_MSG0, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 20224
  br i1 %48, label %49, label %92

49:                                               ; preds = %40
  %50 = load i32, i32* @KERN_WARNING, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %50, i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @IPS_BIT_I960_MSG0I, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @IPS_REG_I2O_HIR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %79, %49
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 120
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPS_REG_I960_MSG0, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @readl(i64 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 20224
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %82

76:                                               ; preds = %66
  %77 = load i32, i32* @IPS_ONE_SEC, align 4
  %78 = call i32 @MDELAY(i32 %77)
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %63

82:                                               ; preds = %75, %63
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 120
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32, i32* @KERN_WARNING, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %86, i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %186

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %40
  %93 = load i32, i32* @IPS_BIT_I960_MSG0I, align 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @IPS_REG_I2O_HIR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @IPS_GOOD_POST_STATUS, align 4
  %103 = shl i32 %102, 8
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %92
  %106 = load i32, i32* @KERN_WARNING, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %106, i32 %109, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  store i32 0, i32* %2, align 4
  br label %186

112:                                              ; preds = %92
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %131, %112
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 240
  br i1 %115, label %116, label %134

116:                                              ; preds = %113
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IPS_REG_I2O_HIR, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @readl(i64 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @IPS_BIT_I960_MSG1I, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %134

128:                                              ; preds = %116
  %129 = load i32, i32* @IPS_ONE_SEC, align 4
  %130 = call i32 @MDELAY(i32 %129)
  br label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %113

134:                                              ; preds = %127, %113
  %135 = load i32, i32* %8, align 4
  %136 = icmp sge i32 %135, 240
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load i32, i32* @KERN_WARNING, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i32, i8*, ...) @IPS_PRINTK(i32 %138, i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %186

143:                                              ; preds = %134
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @IPS_REG_I960_MSG1, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @readl(i64 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* @IPS_BIT_I960_MSG1I, align 4
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @IPS_REG_I2O_HIR, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %151, i64 %156)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IPS_REG_I960_OIMR, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @readl(i64 %162)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = and i32 %164, -9
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @IPS_REG_I960_OIMR, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  %173 = load i32, i32* %4, align 4
  %174 = icmp eq i32 %173, 61200
  br i1 %174, label %175, label %185

175:                                              ; preds = %143
  %176 = load i32, i32* %5, align 4
  %177 = icmp eq i32 %176, 15
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %5, align 4
  %180 = icmp eq i32 %179, 9
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i32 1, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %143
  store i32 1, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %137, %105, %85, %34
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @METHOD_TRACE(i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @MDELAY(i32) #1

declare dso_local i32 @IPS_PRINTK(i32, i32, i8*, ...) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
