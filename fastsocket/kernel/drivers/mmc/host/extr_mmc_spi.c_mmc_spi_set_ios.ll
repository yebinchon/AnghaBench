; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_mmc_spi.c_mmc_spi_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i32 }
%struct.mmc_spi_host = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }

@.str = private unnamed_addr constant [26 x i8] c"mmc_spi: power %s (%d)%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c", can switch\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MMC_POWER_ON = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"switch to SPI mode 0 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"put spi signals to low failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"switch back to SPI mode 3 failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"mmc_spi:  clock to %d Hz, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @mmc_spi_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_spi_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.mmc_spi_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.mmc_spi_host* @mmc_priv(%struct.mmc_host* %10)
  store %struct.mmc_spi_host* %11, %struct.mmc_spi_host** %5, align 8
  %12 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %13 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %16 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %167

19:                                               ; preds = %2
  %20 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %20, i32 0, i32 3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (i32*, i32)*, i32 (i32*, i32)** %28, align 8
  %30 = icmp ne i32 (i32*, i32)* %29, null
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i1 [ false, %19 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %35 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mmc_powerstring(i32 %40)
  %42 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %49 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44, i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %31
  %53 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %80 [
    i32 129, label %56
    i32 128, label %56
  ]

56:                                               ; preds = %52, %52
  %57 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (i32*, i32)*, i32 (i32*, i32)** %60, align 8
  %62 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 %61(i32* %65, i32 %68)
  %70 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %71 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 128
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @msleep(i32 %77)
  br label %79

79:                                               ; preds = %74, %56
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %80, %31
  %82 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MMC_POWER_ON, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %89 = call i32 @mmc_spi_initsequence(%struct.mmc_spi_host* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %161

93:                                               ; preds = %90
  %94 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %95 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %161

98:                                               ; preds = %93
  store i32 0, i32* %8, align 4
  %99 = load i32, i32* @SPI_CPOL, align 4
  %100 = load i32, i32* @SPI_CPHA, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %102
  store i32 %108, i32* %106, align 8
  %109 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %110 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %109, i32 0, i32 2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = call i32 @spi_setup(%struct.TYPE_5__* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %98
  %116 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %117 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %116, i32 0, i32 2
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %115, %98
  %122 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %123 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = call i64 @spi_write(%struct.TYPE_5__* %124, i32* %8, i32 1)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %129 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %128, i32 0, i32 2
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %127, %121
  %134 = call i32 @msleep(i32 10)
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %133
  %138 = load i32, i32* @SPI_CPOL, align 4
  %139 = load i32, i32* @SPI_CPHA, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %142 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 8
  %147 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %148 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %147, i32 0, i32 2
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = call i32 @spi_setup(%struct.TYPE_5__* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %137
  %154 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %155 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %154, i32 0, i32 2
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  %158 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %159

159:                                              ; preds = %153, %137
  br label %160

160:                                              ; preds = %159, %133
  br label %161

161:                                              ; preds = %160, %93, %90
  %162 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %163 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %166 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %161, %2
  %168 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %169 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %168, i32 0, i32 2
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %174 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %172, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %167
  %178 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %179 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %177
  %183 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %184 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %187 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %186, i32 0, i32 2
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i64 %185, i64* %189, align 8
  %190 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %191 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %190, i32 0, i32 2
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = call i32 @spi_setup(%struct.TYPE_5__* %192)
  store i32 %193, i32* %9, align 4
  %194 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %195 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %194, i32 0, i32 2
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 2
  %198 = load %struct.mmc_spi_host*, %struct.mmc_spi_host** %5, align 8
  %199 = getelementptr inbounds %struct.mmc_spi_host, %struct.mmc_spi_host* %198, i32 0, i32 2
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %202, i32 %203)
  br label %205

205:                                              ; preds = %182, %177, %167
  ret void
}

declare dso_local %struct.mmc_spi_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mmc_powerstring(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mmc_spi_initsequence(%struct.mmc_spi_host*) #1

declare dso_local i32 @spi_setup(%struct.TYPE_5__*) #1

declare dso_local i64 @spi_write(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
