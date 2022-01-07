; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_do_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_do_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@MV64XXX_I2C_REG_CONTROL = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_CONTROL_START = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_DATA = common dso_local global i64 0, align 8
@MV64XXX_I2C_REG_CONTROL_INTEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mv64xxx_i2c_do_action: Invalid action: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_do_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_do_action(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca %struct.mv64xxx_i2c_data*, align 8
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %2, align 8
  %3 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %164 [
    i32 136, label %6
    i32 129, label %16
    i32 132, label %28
    i32 131, label %47
    i32 130, label %66
    i32 134, label %94
    i32 133, label %122
    i32 135, label %163
    i32 128, label %176
  ]

6:                                                ; preds = %1
  %7 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %8 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %11 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  br label %199

16:                                               ; preds = %1
  %17 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %18 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_START, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %23 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  br label %199

28:                                               ; preds = %1
  %29 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %30 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %33 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MV64XXX_I2C_REG_DATA, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %39 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %42 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  br label %199

47:                                               ; preds = %1
  %48 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %49 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %52 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MV64XXX_I2C_REG_DATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %58 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %61 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  br label %199

66:                                               ; preds = %1
  %67 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %68 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %67, i32 0, i32 10
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %73 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %80 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MV64XXX_I2C_REG_DATA, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %86 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %89 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  br label %199

94:                                               ; preds = %1
  %95 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %96 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MV64XXX_I2C_REG_DATA, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i8* @readl(i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %103 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %102, i32 0, i32 10
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %108 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32 %101, i32* %112, align 4
  %113 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %114 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %117 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 %115, i64 %120)
  br label %199

122:                                              ; preds = %1
  %123 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %124 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MV64XXX_I2C_REG_DATA, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i8* @readl(i64 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %131 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %130, i32 0, i32 10
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %136 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  store i32 %129, i32* %140, align 4
  %141 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_INTEN, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %144 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %148 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_STOP, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %153 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i32 %151, i64 %156)
  %158 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %159 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  %160 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %161 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %160, i32 0, i32 4
  %162 = call i32 @wake_up_interruptible(i32* %161)
  br label %199

163:                                              ; preds = %1
  br label %164

164:                                              ; preds = %1, %163
  %165 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %166 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %165, i32 0, i32 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %169 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_err(i32* %167, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  %174 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %175 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %1, %164
  %177 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_INTEN, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %180 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %184 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_STOP, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %189 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %188, i32 0, i32 6
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @MV64XXX_I2C_REG_CONTROL, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @writel(i32 %187, i64 %192)
  %194 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %195 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %194, i32 0, i32 5
  store i32 0, i32* %195, align 4
  %196 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %197 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %196, i32 0, i32 4
  %198 = call i32 @wake_up_interruptible(i32* %197)
  br label %199

199:                                              ; preds = %176, %122, %94, %66, %47, %28, %16, %6
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
