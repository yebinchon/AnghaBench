; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_set_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_func_table = type { i32, i32 }
%struct.loop_device = type { i32, i64, i64, i64, i64, i32, i64*, i32*, i32, i32, i64*, i64* }
%struct.loop_info64 = type { i32, i32, i64, i64, i32, i32, i32*, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@LO_KEY_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX_LO_CRYPT = common dso_local global i32 0, align 4
@xfer_funcs = common dso_local global %struct.loop_func_table** null, align 8
@EFBIG = common dso_local global i32 0, align 4
@LO_NAME_SIZE = common dso_local global i32 0, align 4
@none_funcs = common dso_local global %struct.loop_func_table zeroinitializer, align 4
@LO_FLAGS_AUTOCLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.loop_info64*)* @loop_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_set_status(%struct.loop_device* %0, %struct.loop_info64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_device*, align 8
  %5 = alloca %struct.loop_info64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.loop_func_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %4, align 8
  store %struct.loop_info64* %1, %struct.loop_info64** %5, align 8
  %10 = call i64 (...) @current_uid()
  store i64 %10, i64* %8, align 8
  %11 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %12 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %17 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %231

28:                                               ; preds = %21, %15, %2
  %29 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %30 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @Lo_bound, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %231

37:                                               ; preds = %28
  %38 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %39 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LO_KEY_SIZE, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %231

46:                                               ; preds = %37
  %47 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %48 = call i32 @loop_release_xfer(%struct.loop_device* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %231

53:                                               ; preds = %46
  %54 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %55 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %60 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @MAX_LO_CRYPT, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %231

68:                                               ; preds = %58
  %69 = load %struct.loop_func_table**, %struct.loop_func_table*** @xfer_funcs, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.loop_func_table*, %struct.loop_func_table** %69, i64 %71
  %73 = load %struct.loop_func_table*, %struct.loop_func_table** %72, align 8
  store %struct.loop_func_table* %73, %struct.loop_func_table** %7, align 8
  %74 = load %struct.loop_func_table*, %struct.loop_func_table** %7, align 8
  %75 = icmp eq %struct.loop_func_table* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %231

79:                                               ; preds = %68
  br label %81

80:                                               ; preds = %53
  store %struct.loop_func_table* null, %struct.loop_func_table** %7, align 8
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %83 = load %struct.loop_func_table*, %struct.loop_func_table** %7, align 8
  %84 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %85 = call i32 @loop_init_xfer(%struct.loop_device* %82, %struct.loop_func_table* %83, %struct.loop_info64* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %231

90:                                               ; preds = %81
  %91 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %92 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %95 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %100 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %103 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %98, %90
  %107 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %108 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %111 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  %112 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %113 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %116 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %118 = call i64 @figure_loop_size(%struct.loop_device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %106
  %121 = load i32, i32* @EFBIG, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %231

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %98
  %125 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %126 = call i32 @loop_config_discard(%struct.loop_device* %125)
  %127 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %128 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %127, i32 0, i32 11
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %131 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @LO_NAME_SIZE, align 4
  %134 = call i32 @memcpy(i64* %129, i32 %132, i32 %133)
  %135 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %136 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %135, i32 0, i32 10
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %139 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @LO_NAME_SIZE, align 4
  %142 = call i32 @memcpy(i64* %137, i32 %140, i32 %141)
  %143 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %144 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %143, i32 0, i32 11
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* @LO_NAME_SIZE, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %145, i64 %148
  store i64 0, i64* %149, align 8
  %150 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %151 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %150, i32 0, i32 10
  %152 = load i64*, i64** %151, align 8
  %153 = load i32, i32* @LO_NAME_SIZE, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  store i64 0, i64* %156, align 8
  %157 = load %struct.loop_func_table*, %struct.loop_func_table** %7, align 8
  %158 = icmp ne %struct.loop_func_table* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %124
  store %struct.loop_func_table* @none_funcs, %struct.loop_func_table** %7, align 8
  br label %160

160:                                              ; preds = %159, %124
  %161 = load %struct.loop_func_table*, %struct.loop_func_table** %7, align 8
  %162 = getelementptr inbounds %struct.loop_func_table, %struct.loop_func_table* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %165 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %164, i32 0, i32 9
  store i32 %163, i32* %165, align 4
  %166 = load %struct.loop_func_table*, %struct.loop_func_table** %7, align 8
  %167 = getelementptr inbounds %struct.loop_func_table, %struct.loop_func_table* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %170 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 8
  %171 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %172 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @LO_FLAGS_AUTOCLEAR, align 4
  %175 = and i32 %173, %174
  %176 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %177 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @LO_FLAGS_AUTOCLEAR, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %175, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %160
  %183 = load i32, i32* @LO_FLAGS_AUTOCLEAR, align 4
  %184 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %185 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = xor i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %182, %160
  %189 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %190 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %193 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 8
  %194 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %195 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %194, i32 0, i32 6
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %200 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %199, i32 0, i32 7
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %198, i32* %202, align 4
  %203 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %204 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %203, i32 0, i32 6
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %209 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %208, i32 0, i32 7
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  store i32 %207, i32* %211, align 4
  %212 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %213 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %188
  %217 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %218 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %217, i32 0, i32 6
  %219 = load i64*, i64** %218, align 8
  %220 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %221 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.loop_info64*, %struct.loop_info64** %5, align 8
  %224 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @memcpy(i64* %219, i32 %222, i32 %225)
  %227 = load i64, i64* %8, align 8
  %228 = load %struct.loop_device*, %struct.loop_device** %4, align 8
  %229 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %216, %188
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %120, %88, %76, %65, %51, %43, %34, %25
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i64 @current_uid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @loop_release_xfer(%struct.loop_device*) #1

declare dso_local i32 @loop_init_xfer(%struct.loop_device*, %struct.loop_func_table*, %struct.loop_info64*) #1

declare dso_local i64 @figure_loop_size(%struct.loop_device*) #1

declare dso_local i32 @loop_config_discard(%struct.loop_device*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
