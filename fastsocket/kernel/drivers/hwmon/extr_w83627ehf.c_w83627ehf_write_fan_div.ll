; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_write_fan_div.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_w83627ehf_write_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32*, i32 }

@W83627EHF_REG_FANDIV1 = common dso_local global i32 0, align 4
@W83627EHF_REG_VBAT = common dso_local global i32 0, align 4
@W83627EHF_REG_FANDIV2 = common dso_local global i32 0, align 4
@W83627EHF_REG_DIODE = common dso_local global i32 0, align 4
@W83627EHF_REG_SMI_OVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*, i32)* @w83627ehf_write_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_write_fan_div(%struct.w83627ehf_data* %0, i32 %1) #0 {
  %3 = alloca %struct.w83627ehf_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %181 [
    i32 0, label %7
    i32 1, label %49
    i32 2, label %91
    i32 3, label %124
    i32 4, label %156
  ]

7:                                                ; preds = %2
  %8 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %9 = load i32, i32* @W83627EHF_REG_FANDIV1, align 4
  %10 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %8, i32 %9)
  %11 = and i32 %10, 207
  %12 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %13 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  %18 = shl i32 %17, 4
  %19 = or i32 %11, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %21 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 16
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %30 = load i32, i32* @W83627EHF_REG_FANDIV1, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %29, i32 %30, i32 %31)
  %33 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %34 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %35 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %33, i32 %34)
  %36 = and i32 %35, 223
  %37 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %38 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 4
  %43 = shl i32 %42, 3
  %44 = or i32 %36, %43
  store i32 %44, i32* %5, align 4
  %45 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %46 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %45, i32 %46, i32 %47)
  br label %181

49:                                               ; preds = %2
  %50 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %51 = load i32, i32* @W83627EHF_REG_FANDIV1, align 4
  %52 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %50, i32 %51)
  %53 = and i32 %52, 63
  %54 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %55 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 3
  %60 = shl i32 %59, 6
  %61 = or i32 %53, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %63 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 16
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %72 = load i32, i32* @W83627EHF_REG_FANDIV1, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %71, i32 %72, i32 %73)
  %75 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %76 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %77 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %75, i32 %76)
  %78 = and i32 %77, 191
  %79 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %80 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 4
  %85 = shl i32 %84, 4
  %86 = or i32 %78, %85
  store i32 %86, i32* %5, align 4
  %87 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %88 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %87, i32 %88, i32 %89)
  br label %181

91:                                               ; preds = %2
  %92 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %93 = load i32, i32* @W83627EHF_REG_FANDIV2, align 4
  %94 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %92, i32 %93)
  %95 = and i32 %94, 63
  %96 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %97 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 3
  %102 = shl i32 %101, 6
  %103 = or i32 %95, %102
  store i32 %103, i32* %5, align 4
  %104 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %105 = load i32, i32* @W83627EHF_REG_FANDIV2, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %104, i32 %105, i32 %106)
  %108 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %109 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %110 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %108, i32 %109)
  %111 = and i32 %110, 127
  %112 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %113 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 4
  %118 = shl i32 %117, 5
  %119 = or i32 %111, %118
  store i32 %119, i32* %5, align 4
  %120 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %121 = load i32, i32* @W83627EHF_REG_VBAT, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %120, i32 %121, i32 %122)
  br label %181

124:                                              ; preds = %2
  %125 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %126 = load i32, i32* @W83627EHF_REG_DIODE, align 4
  %127 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %125, i32 %126)
  %128 = and i32 %127, 252
  %129 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %130 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 3
  %135 = or i32 %128, %134
  store i32 %135, i32* %5, align 4
  %136 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %137 = load i32, i32* @W83627EHF_REG_DIODE, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %136, i32 %137, i32 %138)
  %140 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %141 = load i32, i32* @W83627EHF_REG_SMI_OVT, align 4
  %142 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %140, i32 %141)
  %143 = and i32 %142, 127
  %144 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %145 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 4
  %150 = shl i32 %149, 5
  %151 = or i32 %143, %150
  store i32 %151, i32* %5, align 4
  %152 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %153 = load i32, i32* @W83627EHF_REG_SMI_OVT, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %152, i32 %153, i32 %154)
  br label %181

156:                                              ; preds = %2
  %157 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %158 = load i32, i32* @W83627EHF_REG_DIODE, align 4
  %159 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %157, i32 %158)
  %160 = and i32 %159, 115
  %161 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %162 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 3
  %167 = shl i32 %166, 2
  %168 = or i32 %160, %167
  %169 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %170 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 4
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 4
  %175 = shl i32 %174, 5
  %176 = or i32 %168, %175
  store i32 %176, i32* %5, align 4
  %177 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %178 = load i32, i32* @W83627EHF_REG_DIODE, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %177, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %2, %156, %124, %91, %49, %7
  ret void
}

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
